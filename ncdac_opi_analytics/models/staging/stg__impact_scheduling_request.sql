

with source as (

    select * from {{ source('ncdac', 'impact_scheduling_request') }}

),

renamed as (

    select
        impstrdt as impact_target_start_date,
        dtofupdt as date_of_last_update,
        tmofupdt as time_of_last_update,
        impreqrsn as reason_for_requesting_impact,
        cddornum as pp_offender_nc_doc_number_id,
        impreqdt as request_date_for_impact,
        impdapofc as requesting_dcc_office_impact

    from source

)

select * from renamed

