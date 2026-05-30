{{config(materialized='incremental',unique_keys='LISTING_ID')}}
SELECT LISTING_ID,PROPERTY_TYPE,ROOM_TYPE,CITY,COUNTRY,ACCOMMODATES,BEDROOMS,BATHROOMS,PRICE_PER_NIGHT,{{tag('price_per_night')}} AS PRICE_PER_NIGHT_TAG,CREATED_AT
FROM {{ref("bronze_listings")}}