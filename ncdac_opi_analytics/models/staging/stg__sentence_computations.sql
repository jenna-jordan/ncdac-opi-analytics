

with source as (

    select * from {{ source('ncdac', 'sentence_computations') }}

),

renamed as (

    select
        cisencmp as inmate_sentence_component,
        parbegdt as parole_supervision_begin_date,
        cidornum as inmate_doc_number,
        gieffdt as sentence_begin_date_for_max,
        ciprefix as inmate_commitment_prefix,
        gisprd as projected_release_date_prd,
        cistaflg as inmate_computation_status_flag,
        cireldat as actual_sentence_end_date,
        pardischdt as parole_discharge_date

    from source

)

select * from renamed

