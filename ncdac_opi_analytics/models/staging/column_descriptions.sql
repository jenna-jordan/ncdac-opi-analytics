select * 
from {{ source('ncdac', 'column_descriptions')}}
