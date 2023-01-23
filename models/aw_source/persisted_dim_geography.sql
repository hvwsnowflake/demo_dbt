
with source_data as (

    SELECT * FROM STG.dim_geography

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
