view: sku_type {
  sql_table_name: edgeMaster.dbo.SkuType ;;

  dimension: sku_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SkuTypeId ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: kit_type_id {
    type: number
    sql: ${TABLE}.KitTypeId ;;
  }

  dimension: sku_type_code {
    type: string
    sql: ${TABLE}.SkuTypeCode ;;
  }

  dimension: sku_type_name {
    type: string
    sql: ${TABLE}.SkuTypeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [sku_type_id, sku_type_name]
  }
}
