

with source as (

    select * from {{ source('ncdac', 'court_commmitment') }}

),

renamed as (

    select
        cmstaflg as inmate_commitment_status_flag,
        cmnewsupv as new_period_of_supervision_flag,
        cmppstfl as pp_commitment_status_flag,
        cmmaxlen as total_sentence_length,
        gmseffdt as earliest_sentence_effective_date,
        cmpedtyp as type_of_old_pe_date_code,
        cmscmidn as committed_middle_name,
        dtofupdt as date_of_last_update,
        cmnewpd as new_period_of_incarceration_flag,
        cmjailcr as total_jail_credits_in_days,
        cmscfstn as committed_first_name,
        cmnorest as no_restitution_flag,
        cmprolen as total_length_of_supervision,
        cmstadte as commitment_status_date,
        cmcounty as county_of_convict_most_serious_offense,
        cmppcmdt as pp_commitment_status_date,
        cmintdte as pp_case_intake_date,
        cmscsufx as committed_name_suffix,
        cmsclstn as committed_last_name,
        cmadmdte as offender_admission_or_intake_date,
        cmprioff as most_serious_offense_code,
        cioldped as ped_prior_to_1995_conversion,
        tmofupdt as time_of_last_update,
        cmprefix as commitment_prefix,
        cmdornum as offender_nc_doc_id_number

    from source

)

select * from renamed

