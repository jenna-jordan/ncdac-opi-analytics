

with source as (

    select * from {{ source('ncdac', 'warrant_issued') }}

),

renamed as (

    select
        cmdornum as offender_nc_doc_id_number,
        whexstat as warrant_extradition_status_cd,
        tmofupdt as time_of_last_update,
        whstacod as warrant_status_code,
        dtofupdt as date_of_last_update,
        whprefix as warrant_commitment_prefix,
        whsencmp as sentence_component_number

    from source

)

select * from renamed

