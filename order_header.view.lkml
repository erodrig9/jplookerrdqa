view: order_header {
  sql_table_name: dbo.OrderHeader ;;

  dimension: autoship_order_header_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.AutoshipOrderHeaderId ;;
  }

  dimension: affiliate_id {
    type: number
    sql: ${TABLE}.AffiliateId ;;
  }

  dimension: authorization_info_id {
    type: number
    sql: ${TABLE}.AuthorizationInfoId ;;
  }

  dimension: auto_ship_number {
    type: number
    sql: ${TABLE}.AutoShipNumber ;;
  }

  dimension: bill_order_address_id {
    type: number
    sql: ${TABLE}.Bill_OrderAddressId ;;
  }

  dimension: billing_code_id {
    type: number
    sql: ${TABLE}.BillingCodeId ;;
  }

  dimension: blanket_order_header_id {
    type: number
    sql: ${TABLE}.BlanketOrderHeaderId ;;
  }

  dimension: budget_center_id {
    type: number
    sql: ${TABLE}.BudgetCenterId ;;
  }

  dimension: client_reference {
    type: string
    sql: ${TABLE}.ClientReference ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  dimension: commission_info {
    type: string
    sql: ${TABLE}.CommissionInfo ;;
  }

  dimension: commission_value {
    type: string
    sql: ${TABLE}.CommissionValue ;;
  }

  dimension_group: complete_by {
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
    sql: ${TABLE}.CompleteByDate ;;
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

  dimension: custodian_user_id {
    type: number
    sql: ${TABLE}.Custodian_UserId ;;
  }

  dimension: destination_provider_id {
    type: number
    sql: ${TABLE}.DestinationProviderId ;;
  }

  dimension: distribution_id {
    type: number
    sql: ${TABLE}.DistributionId ;;
  }

  dimension: dynamic_record_id {
    type: number
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: edge_user_id {
    type: number
    sql: ${TABLE}.Edge_UserId ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: fobrule_id {
    type: number
    sql: ${TABLE}.FOBRuleId ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}.GroupId ;;
  }

  dimension: ipoctet1 {
    type: number
    sql: ${TABLE}.IPOctet1 ;;
  }

  dimension: ipoctet2 {
    type: number
    sql: ${TABLE}.IPOctet2 ;;
  }

  dimension: ipoctet3 {
    type: number
    sql: ${TABLE}.IPOctet3 ;;
  }

  dimension: ipoctet4 {
    type: number
    sql: ${TABLE}.IPOctet4 ;;
  }

  dimension: locale_code {
    type: string
    sql: ${TABLE}.localeCode ;;
  }

  dimension: marketing_source_id {
    type: number
    sql: ${TABLE}.MarketingSourceId ;;
  }

  dimension: member_id {
    type: number
    sql: ${TABLE}.MemberId ;;
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

  dimension: order_source_id {
    type: number
    sql: ${TABLE}.OrderSourceId ;;
  }

  dimension: order_status_id {
    type: number
    sql: ${TABLE}.OrderStatusId ;;
  }

  dimension: order_type_id {
    type: number
    sql: ${TABLE}.OrderTypeId ;;
  }

  dimension: ordered_by_member_id {
    type: number
    sql: ${TABLE}.OrderedBy_MemberId ;;
  }

  dimension: original_order_header_id {
    type: number
    sql: ${TABLE}.OriginalOrderHeaderId ;;
  }

  dimension: priority_id {
    type: number
    sql: ${TABLE}.PriorityId ;;
  }

  dimension_group: priority_ship {
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
    sql: ${TABLE}.PriorityShipDate ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: provider_id {
    type: number
    sql: ${TABLE}.ProviderId ;;
  }

  dimension_group: record_create {
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
    sql: ${TABLE}.RecordCreateDate ;;
  }

  dimension: reference_field1 {
    type: string
    sql: ${TABLE}.ReferenceField1 ;;
  }

  dimension: reference_field2 {
    type: string
    sql: ${TABLE}.ReferenceField2 ;;
  }

  dimension: reference_field3 {
    type: string
    sql: ${TABLE}.ReferenceField3 ;;
  }

  dimension: reference_field4 {
    type: string
    sql: ${TABLE}.ReferenceField4 ;;
  }

  dimension: reference_field5 {
    type: string
    sql: ${TABLE}.ReferenceField5 ;;
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

  dimension: sales_territory_id {
    type: number
    sql: ${TABLE}.SalesTerritoryId ;;
  }

  dimension: ship_complete {
    type: string
    sql: ${TABLE}.ShipComplete ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.SourceId ;;
  }

  dimension: work_order_reference {
    type: string
    sql: ${TABLE}.WorkOrderReference ;;
  }

  dimension: work_order_source_id {
    type: number
    sql: ${TABLE}.WorkOrderSourceId ;;
  }

  dimension: work_order_type_id {
    type: number
    sql: ${TABLE}.WorkOrderTypeId ;;
  }

  measure: count {
    type: count
    drill_fields: [autoship_order_header_id, order_header.autoship_order_header_id, order_header.count, order_line.count]
  }
}
