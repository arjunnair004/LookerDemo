connection: "alpha-gcp_playbook_reporting-test"

# include all the views
include: "/views/**/*.view"

datagroup: looker_training_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_training_default_datagroup

explore: customer_transactions {
  label: "Looker Demo"
}

explore: customer_transactions_vw {
  label: "Arjun"
}
