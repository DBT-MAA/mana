
with city as
(select * from DBT_DB1.DEV.city_join where region_id ='200')
select * from city 
