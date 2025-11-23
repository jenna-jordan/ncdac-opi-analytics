

with source as (

    select * from {{ source('ncdac', 'financial_obligation') }}

),

renamed as (

    select
        cpcopbal as cop_balance,
        cppayseq as cop_account_sequence_number,
        cpprefix as cop_commitment_prefix,
        cppaytyp as court_ordered_payment_type,
        cppaypri as payee_priority,
        cppayfrq as payee_freq_of_payment,
        cpcaseno as cop_commitment_caseno,
        cpschpay as scheduled_pay_plan_amount,
        cppayall as allocated_payment_flag,
        dtofupdt as date_of_last_update,
        cpcaseco as cop_county_code,
        cppaysta as payee_account_status_code,
        tmofupdt as time_of_last_update,
        cpipflag as inmate_or_pp_cop_account_flag,
        cmdornum as offender_nc_doc_id_number

    from source

)

select * from renamed

