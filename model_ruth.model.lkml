connection: "snowflake_test"

include: "/views/*.view.lkml"


explore: sql_runner_query {}


# include all views in the views/ folder in this project
include: "/*/*.view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# Select the views that should be a part of this model,
# and define the joins that connect them together.

datagroup: order_datagroup {
  sql_trigger: 10 ;;
  max_cache_age: "24 hours"
}

explore: order_items {
  aggregate_table: rollup__orders_id__users_age {
    query: {
      dimensions: [orders.id, users.age]
      measures: [orders.count]
      timezone: "America/Los_Angeles"
    }
    materialization: {
      datagroup_trigger: order_datagroup
    }

  }
  join: orders {
    relationship: many_to_one
    sql_on: ${orders.id} = ${order_items.order_id} ;;
  }

  join: users {
    relationship: many_to_one
    sql_on: ${users.id} = ${orders.user_id} ;;
  }
}
