

with source as (

    select * from {{ source('ncdac', 'inmate_profile') }}

),

renamed as (

    select
        cioldpfx as oldest_commit_of_current_incar,
        cilpendt as date_of_last_arrest_on_parole,
        ciclbrth as inmate_birth_date,
        ptstatus as parole_and_terminate_status,
        cdspcchr as inmate_special_characteristics,
        cirulcom as last_ruling_prd_commitment,
        ciclrace as inmate_race_code,
        cisencm2 as current_sentence_component,
        cioldcmp as oldest_snt_cmp_of_curr_incar,
        cicurcmd as current_dop_command_code,
        popunit as population_or_management_unit,
        priorsfl as prior_incarcerations_flag,
        ciclstnm as inmate_last_name,
        girprd as final_ruling_prd,
        cihisec as inmate_control_status_code,
        ciethnic as inmate_ethnic_affiliation,
        cigtrate as gt_rate_or_et_level_code,
        cirulcmp as last_ruling_prd_component,
        cicsufix as inmate_name_suffix,
        lgthincar as length_of_current_incarceration,
        lstinfrac as latest_discipline_infraction,
        girtrd as final_ruling_trd,
        gisndxcn as inmate_name_soundex_code,
        cipriqlf as primary_offense_qualifier,
        ciprioff as most_serious_offense_curr_incar,
        cilamvtm as time_of_last_movement,
        tmcompsta as inmate_time_comp_status_code,
        fpidflag as inmate_positively_identified,
        cicfstnm as inmate_first_name,
        ciothloc as other_facility_code,
        reviewsfl as current_pending_reviews_flag,
        cirulsnt as term_of_incarceration_in_days,
        cilamvty as type_of_last_inmate_movement,
        cilabels as inmate_label_status_code,
        cidornum as inmate_doc_number,
        nxtpcrev as next_parole_comm_review_date,
        cicclass as custody_class_code,
        cifelony as inmate_is_felon_or_misdemeanant,
        ciradmdt as inmate_admission_date,
        ciinstat as inmate_admin_status_code,
        nxtsecrev as next_security_review_date,
        paranal as parole_case_analyst,
        ciconvdt as oldest_conviction_date,
        cixcaldt as date_trd_and_prd_last_computed,
        nxtcusrev as next_custody_review_date,
        cigtlaw as law_for_final_ruling_dates,
        cdprmass as inmate_primary_assignment,
        ciclsex as inmate_gender_code,
        girped as final_ruling_ped,
        totinfrac as total_discipline_infractions,
        cicmidin as inmate_middle_initial,
        gtonoff as on_off_gain_time_code,
        lstinfrdt as last_discipline_infraction_dt,
        inmrcdsta as inmate_record_status_code,
        ciadmloc as admitting_diagnostic_center,
        cicurarea as current_dop_area_code,
        ciprefx2 as current_commitment_prefix,
        citotsnt as total_sentence_length_in_days,
        cilamvdt as date_of_last_inmate_movement,
        lgthrsent as length_of_ruling_sentences,
        girmax as final_ruling_max_release_date,
        cigtdate as last_date_on_off_gain_time,
        escapesfl as escape_history_flag,
        cicurloc as inmate_facility_code,
        pbrevtyp as next_parole_review_type_code,
        cidyserv as days_served_in_doc_custody,
        totsencmp as total_sentence_count

    from source

)

select * from renamed

