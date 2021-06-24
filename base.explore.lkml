include: "/views/base.view.lkml"
include: "/views/view_a.view.lkml"
include: "/views/users.view.lkml"


explore: base {
  from: base
  join: view_a {
    relationship: many_to_one
    sql_on: ${view_a.id} = ${base.order_id} ;;
  }
  join: users {}
}
