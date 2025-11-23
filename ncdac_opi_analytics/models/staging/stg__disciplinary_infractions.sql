

with source as (

    select * from {{ source('ncdac', 'disciplinary_infractions') }}

),

renamed as (

    select
        cidornum as inmate_doc_number,
        privtyp2 as privilege_lost_2nd_type_code,
        cidrseq as disciplinary_infraction_sequence_num,
        privtyp1 as privilege_lost_1st_type_code,
        cidrcode as disciplinary_infraction_code,
        demoteto as custody_demoted_to_code,
        cidrplea as inmate_plea_to_infraction,
        cidrverx as disciplinary_infraction_verdict_code,
        demotfrm as custody_demoted_from_code,
        xdutspmt as extra_duty_hours_suspend_mnths,
        cidrorig as original_dr_code_from_invest,
        cidrstat as disciplinary_violation_status_code,
        actvsptm as time_of_prior_susp_punish,
        cidrtime as disciplinary_infraction_time,
        suspspmt as privileges_suspended_months,
        tmofupdt as time_of_last_update,
        drchgby as disciplinary_charge_level,
        drvrdtby as type_of_hearing_for_punishment,
        dtofupdt as date_of_last_update,
        xdutyhrs as extra_duty_hours,
        cidracnf as disciplinary_segregation_time_days,
        privtyp3 as privilege_lost_3rd_type_code,
        actvspdt as date_of_prior_susp_punish,
        suspstat as suspension_status,
        cidrdays as good_time_lost_due_to_infrac,
        applotcm as disciplinary_appeal_decision,
        suspdays as privileges_suspended_in_days,
        dmfrspmt as custody_demotion_suspended_month,
        cidrefdt as disciplinary_infraction_date,
        dsegspmt as dseg_days_suspended_in_months,
        actvsusp as activate_prior_suspension,
        lostspmt as good_time_lost_suspended_months
        
    from source

)

select * from renamed

