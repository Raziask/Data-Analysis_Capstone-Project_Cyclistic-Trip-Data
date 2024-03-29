--SELECT  FROM `tripdata2023.Months.DataAnalysis` --LIMIT 1000

-- Minumum, Maximum, Average ride lengths & no of trips by month by members and casual riders

select Month, member_casual,  
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length,  
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1,2
order by 1


select Month, DayofWeek, EXTRACT(HOUR FROM started_at) As HouroftheDay, member_casual,  
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length,  
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1,2, 3, 4
order by 1, 2,3,4


-- Minumum, Maximum, Average ride lengths and number of trips by day of week by members and casual riders

select  DayofWeek , member_casual ,
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length,  
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1, 2
order by 1

-- Minumum, Maximum, Average ride lengths and number of trips by hour of the day by members and casual riders

select  EXTRACT(HOUR FROM started_at) AS hour_of_day , member_casual ,
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length,  
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1, 2
order by 1, 2


-- Minumum, Maximum, Average ride lengths and number of trips for members and casual riders

select  member_casual, 
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length,  
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1
order by 1

--Minumum, Maximum, Average ride lengths and number of trips for each bike type for members and casual riders

select  member_casual, 
rideable_type ,
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length, 
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1,2
order by 1,5 desc

--Minumum, Maximum, Average ride lengths and number of trips by each Bike type

select   
rideable_type ,
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length, 
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1
order by 5 desc



-- Minumum, Maximum, Average ride lengths for the year 2023.

select count(ride_id) As TotalTrips, min(ride_length) AS  Min_Ride_Length, max(ride_length) AS Max_Ride_Length, avg(ride_length) AS Avg_Ride_Length from `Months.DataMerge_Cleaned`

select Member_Casual, count(ride_id) As No_of_Rides, min(ride_length) AS  Min_Ride_Length, max(ride_length) AS Max_Ride_Length, avg(ride_length) AS Avg_Ride_Length from `Months.DataMerge_Cleaned` Group By 1


-- Minumum, Maximum, Average ride lengths & Number of trips for each day of week of the month.

select Month, DayofWeek, member_casual, 
min(ride_length) AS  Min_Ride_Length, 
max(ride_length) AS Max_Ride_Length, 
avg(ride_length) AS Avg_Ride_Length,  
count(ride_id) As No_of_trips
from `Months.DataMerge_Cleaned` 
group by 1,2,3 
order by 1,2,3

