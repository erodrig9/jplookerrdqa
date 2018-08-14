view: order_line_detail {
  sql_table_name: dbo.OrderLineDetail ;;

  dimension: order_line_detail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderLineDetailId ;;
  }

  dimension: btoinventory_id {
    type: number
    sql: ${TABLE}.BTOInventoryId ;;
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

  dimension: duty_tax {
    type: string
    sql: ${TABLE}.DutyTax ;;
  }

  dimension: dynamic_record_id {
    type: number
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: gift {
    type: string
    sql: ${TABLE}.Gift ;;
  }

  dimension: gift_charge {
    type: string
    sql: ${TABLE}.GiftCharge ;;
  }

  dimension: inventory_id {
    type: number
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: kit_line_id {
    type: number
    sql: ${TABLE}.KitLineId ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineId ;;
  }

  dimension: order_shipping_info_id {
    type: number
    sql: ${TABLE}.OrderShippingInfoId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: refund_amount {
    type: string
    sql: ${TABLE}.RefundAmount ;;
  }

  dimension_group: release {
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
    sql: ${TABLE}.ReleaseDate ;;
  }

  dimension: ship_order_address_id {
    type: number
    sql: ${TABLE}.Ship_OrderAddressId ;;
  }

  dimension: tax {
    type: string
    sql: ${TABLE}.Tax ;;
  }

  measure: count {
    type: count
    drill_fields: [order_line_detail_id, order_line.catalog_name, order_line.item_type_name, order_line.sku_type_name, order_line.original_order_line_id]
  }
}
