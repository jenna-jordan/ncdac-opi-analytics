

with source as (

    select * from {{ source('ncdac', 'probation_and_parole_client_profile') }}

),

renamed as (

    select
        dccpuntyp as dcc_punishment_type_summary_cd,
        sntpunty as sentence_punishment_type_code,
        cdssuffx as pp_offender_name_suffix,
        cdfelony as pp_client_is_felon_or_misd_code,
        cdclrace as offender_race_code,
        tmofupdt as time_of_last_update,
        prioffnse as most_serious_offense_curr_pd,
        cdclsex as offender_gender_code,
        gdstatus as pp_client_admin_status_code,
        dtofupdt as date_of_last_update,
        cdclbrth as offender_date_of_birth,
        cdsmidnm as pp_offender_middle_name,
        cdppsloc as pp_office_code,
        ddinstno as interstate_compact_case_code,
        cdslstnm as pp_offender_last_name,
        cddornum as pp_offender_nc_doc_number_id,
        cdsfstnm as pp_offender_first_name,
        pprcdsta as pp_client_record_status_code,
        cdsuplth as overall_length_of_supv_ymd

    from source

)

select * from renamed

