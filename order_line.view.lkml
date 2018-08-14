view: order_line {
  sql_table_name: dbo.OrderLine ;;

  dimension: original_order_line_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.originalOrderLineID ;;
  }

  dimension: auto_include {
    type: string
    sql: ${TABLE}.AutoInclude ;;
  }

  dimension: auto_include_allow_backorder {
    type: string
    sql: ${TABLE}.AutoInclude_AllowBackorder ;;
  }

  dimension: auto_include_ship_set_id {
    type: number
    sql: ${TABLE}.AutoInclude_ShipSetId ;;
  }

  dimension: budget_item {
    type: string
    sql: ${TABLE}.BudgetItem ;;
  }

  dimension: bundle_header_catalog_id {
    type: number
    sql: ${TABLE}.BundleHeader_CatalogId ;;
  }

  dimension: bundle_quantity {
    type: number
    sql: ${TABLE}.BundleQuantity ;;
  }

  dimension: bundle_release_days {
    type: number
    sql: ${TABLE}.Bundle_ReleaseDays ;;
  }

  dimension: bundle_ship_at_once {
    type: number
    sql: ${TABLE}.Bundle_ShipAtOnce ;;
  }

  dimension: bundle_ship_method_id {
    type: number
    sql: ${TABLE}.Bundle_ShipMethodId ;;
  }

  dimension: catalog_dynamic_record_id {
    type: number
    sql: ${TABLE}.Catalog_DynamicRecordId ;;
  }

  dimension: catalog_id {
    type: number
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: catalog_item {
    type: string
    sql: ${TABLE}.CatalogItem ;;
  }

  dimension: catalog_name {
    type: string
    sql: ${TABLE}.CatalogName ;;
  }

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryId ;;
  }

  dimension: charge_shipping {
    type: string
    sql: ${TABLE}.ChargeShipping ;;
  }

  dimension: commission_value {
    type: string
    sql: ${TABLE}.CommissionValue ;;
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

  dimension: disposition_code_id {
    type: number
    sql: ${TABLE}.DispositionCodeId ;;
  }

  dimension: dynamic_record_id {
    type: number
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: initial_price {
    type: string
    sql: ${TABLE}.InitialPrice ;;
  }

  dimension: inventory_dynamic_record_id {
    type: number
    sql: ${TABLE}.Inventory_DynamicRecordId ;;
  }

  dimension: inventory_id {
    type: number
    sql: ${TABLE}.InventoryId ;;
  }

  dimension: item_type_name {
    type: string
    sql: ${TABLE}.ItemTypeName ;;
  }

  dimension: order_charge_rule_id {
    type: number
    sql: ${TABLE}.OrderChargeRuleId ;;
  }

  dimension: order_currency_commission_value {
    type: string
    sql: ${TABLE}.OrderCurrencyCommissionValue ;;
  }

  dimension: order_header_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderHeaderId ;;
  }

  dimension: order_line_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.OrderLineId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: price_list_id {
    type: number
    sql: ${TABLE}.PriceListId ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: reason_code_id {
    type: number
    sql: ${TABLE}.ReasonCodeId ;;
  }

  dimension: return_type_id {
    type: number
    sql: ${TABLE}.ReturnTypeId ;;
  }

  dimension: service_charge {
    type: string
    sql: ${TABLE}.ServiceCharge ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.Sku ;;
  }

  dimension: sku_type_name {
    type: string
    sql: ${TABLE}.SkuTypeName ;;
  }

  dimension: taxable {
    type: string
    sql: ${TABLE}.Taxable ;;
  }

  dimension: unit_cost {
    type: string
    sql: ${TABLE}.UnitCost ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}.UnitPrice ;;
  }

  dimension: unit_weight {
    type: number
    sql: ${TABLE}.UnitWeight ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      original_order_line_id,
      catalog_name,
      item_type_name,
      sku_type_name,
      order_line.catalog_name,
      order_line.item_type_name,
      order_line.sku_type_name,
      order_line.original_order_line_id,
      order_header.autoship_order_header_id,
      order_line.count,
      order_line_detail.count
    ]
  }
}
