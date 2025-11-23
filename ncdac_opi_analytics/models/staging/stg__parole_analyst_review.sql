

with source as (

    select * from {{ source('ncdac', 'parole_analyst_review') }}

),

renamed as (

    select
        pcspcon2 as special_condition_2,
        pcspcon5 as special_condition_5,
        pcspcon10 as special_condition_10,
        pcspcon4 as special_condition_4,
        pcspcon9 as special_condition_9,
        tmofupdt as time_of_last_update,
        pcspcon1 as special_condition_1,
        pcspcon12 as special_condition_12,
        ciparrel as release_date_parole_review,
        pcspcon8 as special_condition_8,
        pcspcon3 as special_condition_3,
        pcspcon11 as special_condition_11,
        cidornum as inmate_doc_number,
        pbrevtyp as next_parole_review_type_code,
        pcanalyst as parole_commission_analyst,
        cicrevdt as pc_event_effective_date,
        pcspcon6 as special_condition_6,
        pcspcon7 as special_condition_7,
        cicrevsq as pc_event_sequence_number,
        dtofupdt as date_of_last_update

    from source

)

select * from renamed

