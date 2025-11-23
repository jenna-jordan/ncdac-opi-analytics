

with source as (

    select * from {{ source('ncdac', 'column_descriptions') }}

),

renamed as (

    select
        table_name,
        column_name,
        description

    from source

)

select * from renamed

