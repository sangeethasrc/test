
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (
    select * from raw.jaffle_shop.orders

   -- select 1 as id
    --union all
    --select null as id

)

select *
from source_data --where user_id=1;

--update source_data set status='completed' where user_id=1

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
