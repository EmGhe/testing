with source as (
    select * from {{source ('Test', 'data_testing')}}
)

select * from source