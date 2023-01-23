
 
 with GEO as (  select *
     from {{ ref('persisted_dim_geography') }}
)

, SALES as (
   select *
     from {{ ref('persisted_fact_internetsales') }}
)
 ,FINAL_JOIN as (
  select GEO."City"
       , SALES."SalesAmount" 
  from GEO
  join SALES
    on GEO."GeographyKey" = SALES."SalesTerritoryKey"
)
SELECT *
FROM FINAL_JOIN