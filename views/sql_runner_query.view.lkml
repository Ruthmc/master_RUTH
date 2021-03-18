view: sql_runner_query {
  sql_table_name: "LOOKER_TEST".ALL_TYPES;;


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: this_string {
    type: string
    sql: ${TABLE}."THIS_STRING" ;;
  }

  dimension: this_int {
    type: number
    sql: ${TABLE}."THIS_INT" ;;
  }

  dimension: this_float {
    type: number
    sql: ${TABLE}."THIS_FLOAT" ;;
  }

  set: detail {
    fields: [this_string, this_int, this_float]
  }
}
