{{ config (
    materialized = 'table', 
    schema='topline_test', 
    persist_docs={"relation": true}
    ) 
}}


with compute as (
    select 
        *, 
        sales * price as ca
    from {{ref ('base_data_testing')}}
)

select * from compute