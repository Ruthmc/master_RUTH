view: local_infile_csv {
  sql_table_name: "LOOKER_TEST"."LOCAL_INFILE_CSV"
    ;;

  dimension: col1 {
    type: string
    sql: ${TABLE}."COL1" ;;
  }

  dimension: col2 {
    type: string
    sql: ${TABLE}."COL2" ;;
  }

  dimension: col3 {
    type: string
    sql: ${TABLE}."COL3" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
