

with source as (

    select * from {{ source('ncdac', 'sentence_component') }}

),

renamed as (

    select
        cmdispo2 as cmp_disposition_code_2,
        prpoints as prior_rcd_points_or_convictions,
        courttyp as court_type_code,
        cmparlen as supervision_to_follow_incar,
        cmcntype as type_of_count_code,
        cmcmstdt as inmate_component_status_date,
        iccjail as icc_jail_credits_in_days,
        cmoffnse as primary_offense_code,
        prifelmd as primary_felony_or_misdemeanor_cd,
        cmsntype as sentence_type_code,
        cmsntyp4 as sentence_type_code,
        prlevel as prior_record_level_code,
        cmoffdt2 as date_offense_committed_end,
        cmsntyp5 as sentence_type_code,
        ssacttrm as split_sentence_active_term,
        delauth as delegated_authority_flag,
        cmppcmst as pp_case_status,
        cmcocnvt as county_of_conviction_code,
        cmimpsdt as sentence_conviction_date,
        cmtrmmin as minimum_sentence_length,
        punishtyp as punishment_type_code,
        cmtrmprb as length_of_supervision,
        cmtrmext as supervision_term_extension,
        cmcaseno as court_docket_number,
        penclass as sentencing_penalty_class_code,
        cmprcomm as prior_commitment_prefix,
        cmsntyp6 as sentence_type_code,
        cmchntyp as sentence_chaining_type_code,
        cmppcmp as prior_pp_commnt_or_component_id,
        cmsntyp3 as sentence_type_code,
        cmsntyp2 as sentence_type_code,
        cmdispos as component_disposition_code,
        cmtrmmax as maximum_sentence_length,
        cmjalcrd as credits_for_jail_days_served,
        cmprefix as commitment_prefix,
        cmppstdt as pp_component_status_date,
        cmstatut as nc_general_statute_number,
        dtofupdt as date_of_last_update,
        cmsencmp as sentence_component_number,
        cmoffdte as date_offense_committed_begin,
        cmprcmp as prior_component_identifier,
        cmsentdt as sentence_effective_begin_date,
        dtinupdt as original_data_entry_date,
        cmdornum as offender_nc_doc_id_number,
        onmax as serving_min_or_max_term_code,
        cmcounts as number_of_counts,
        cmppchty as pp_supv_term_chain_type_code,
        cmtimcom as time_computation_exception_cd,
        cmcmpsta as inmate_sentence_status_code,
        cmoldaudit as original_sentence_audit_code,
        tmofupdt as time_of_last_update,
        cmppcomm as pp_prior_commitment_prefix,
        dtofupdt2 as date_of_last_update_2,
        tmofupdt2 as time_of_last_update_2,
        gsmaxterm as gs_maximum_sentence_allowed,
        cmoffqlf as offense_qualifier_code

    from source

)

select * from renamed

