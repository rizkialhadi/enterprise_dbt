-- file: analyses/compare_customer_data.sql
{% set old_relation = adapter.get_relation(database=target.database, schema='public', identifier='old_customers_table') %}
{% set new_relation = ref('dim_customers') %}

{{ audit_helper.compare_relations(
    a_relation=old_relation,
    b_relation=new_relation,
    primary_key="customer_id"
) }}