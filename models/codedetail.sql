with code as
(
    select * from {{ref('countrycodedail')}}
)
select * from code