WITH CTE as (

    select 
    t.*
    ,w.*
    from {{ ref('trip_facts') }} t 
    inner join {{ ref('daily_weather') }} w 
    on t.trip_date = w.daily_weather

    ORDER by t.trip_date desc
)

select *
from CTE
