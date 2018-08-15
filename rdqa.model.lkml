connection: "rdqa-int_edgerelease6i155trunk"

# include all the views
include: "*.view"

datagroup: rdqa_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rdqa_default_datagroup

explore: inventory {
  join: inventory_provider_xref {
    type: inner
    relationship: one_to_many
    sql_on: ${inventory.inventory_id} = ${inventory_provider_xref.inventory_id} ;;
  }

  join: providers {
    type: inner
    relationship: one_to_many
    sql_on: ${inventory_provider_xref.provider_id} = ${providers.provider_id} ;;
  }

  join: sku_type{
    type: inner
    relationship: one_to_one
    sql_on: ${inventory.sku_type_id} = ${sku_type.sku_type_id} ;;
  }

  join: status{
    type: inner
    relationship: one_to_one
    sql_on: ${inventory.status_id} = ${status.status_id} ;;
  }

  join: users{
    type: left_outer
    relationship: one_to_one
    sql_on: ${inventory.custodian_id} = ${users.user_id} ;;
  }
}
