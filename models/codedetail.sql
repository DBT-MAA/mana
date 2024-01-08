with code as
(select * from {{ref('countrycodedetail')}})
select * from code