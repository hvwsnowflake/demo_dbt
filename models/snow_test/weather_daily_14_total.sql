{{ config(materialized="table") }}
with
    source_data as (

        select

            v:city:coord:lat as latitude,
            v:city:name as city,

            v:city:country::string as country,
            t::date as date
        from snowflake_sample_data.weather.daily_14_total
        where t between '2020-01-01' and '2020-01-31'
    )



select *
from source_data
/*
    Uncomment the line below to remove records with null `id` values
*/
-- where id is not null
