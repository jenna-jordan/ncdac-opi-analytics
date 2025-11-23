

with source as (

    select * from {{ source('ncdac', 'special_conditions_and_sanctions') }}

),

renamed as (

    select
        cmspprov as special_provision_or_sanction_cd,
        dtofupdt as date_of_last_update,
        cmprefix as commitment_prefix,
        spcndseq as special_condition_sequence_num,
        tmofupdt as time_of_last_update,
        compstat as completion_status_of_sanction,
        cmsencmp as sentence_component_number,
        cmdornum as offender_nc_doc_id_number

    from source

)

select * from renamed

