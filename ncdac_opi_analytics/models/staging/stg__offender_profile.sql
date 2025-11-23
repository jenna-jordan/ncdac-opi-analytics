

with source as (

    select * from {{ source('ncdac', 'offender_profile') }}

),

renamed as (

    select
        cmethnic as offender_ethnic_code,
        cmclbrth as offender_birth_date,
        cmclrace as offender_race_code,
        cmclsex as offender_gender_code,
        cmbodbld as offender_body_build_code,
        cmbrthst as state_where_offender_born,
        cmpantsz as offender_pants_size,
        cmjacket as offender_jacket_size,
        cmshoesi as offender_shoe_size,
        cmhair as offender_hair_color_code,
        cmbrtcty as city_where_offender_born,
        cmskcmpx as offender_skin_complexion_code,
        cmprilng as offender_primary_language_code,
        cmshirts as offender_shirt_size,
        dtofupdt as date_of_last_update,
        cmdornum as offender_nc_doc_id_number,
        cmbcntry as country_where_offender_born,
        cmcitizn as offender_citizenship_code,
        cmnxtpho as next_photo_year,
        tmofupdt as time_of_last_update,
        cmclhite as offender_height_in_inches,
        cmdressz as offender_dress_size,
        cmbrtncc as nc_county_where_offender_born,
        cmcleyec as offender_eye_color_code,
        cmweight as offender_weight_in_lbs

    from source

)

select * from renamed

