view: status {
  sql_table_name: dbo.Status ;;

  dimension: status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension_group: create_stamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CreateStamp ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: status_code {
    type: string
    sql: ${TABLE}.StatusCode ;;
  }

  dimension: status_name {
    type: string
    sql: ${TABLE}.StatusName ;;
  }

  measure: count {
    type: count
    drill_fields: [status_id, status_name, users.count]
  }
}
