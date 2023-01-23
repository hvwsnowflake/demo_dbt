
with source_data as (

    SELECT * FROM SNOWFLAKE_SAMPLE_DATA.weather.daily_14_total

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
