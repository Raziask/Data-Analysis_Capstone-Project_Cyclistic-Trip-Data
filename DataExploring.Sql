--SELECT  FROM `tripdata2023.Months.DataExploration` LIMIT 1000

--Checking for null record count in each column to take further action for those records

select count(*) from `Months.DataMerge`
where ride_id is null;------found 2477318 rows as null values

select count(*) from `Months.DataMerge`
where rideable_type is null;----founded 2477318 rows

select count(*) from `Months.DataMerge`
where started_at is null;--founded as 2477318 rows

select count(*) from `Months.DataMerge`
where ended_at is null;---founded 2477318 rows

select count(*) from `Months.DataMerge`
where start_station_name is null;  ---found 2838815 rows

select count(*) from `Months.DataMerge`
where start_station_id is null;   ---found 2838947 rows

select count(*) from `Months.DataMerge`
where end_station_name is null;   ---found 2814355  rows

select count(*) from `Months.DataMerge`
where end_station_id is null;---founded 2814496 rows

select count(*) from `Months.DataMerge`
where start_lat is null;---founded 2477318 rows


select count(*) from `Months.DataMerge`
where start_lng is null;      ---found 2477318 rows

select count(*) from `Months.DataMerge`
where end_lat is null;                  ---found 2479851 rows

select count(*) from `Months.DataMerge`
where end_lng is null;                     ---found 2479851 rows

select count(*) from `Months.DataMerge`
where member_casual is null;           ---found 2477318 rows


-- checking for duplicate ride_ids
Select COUNT(ride_id)-COUNT(DISTINCT ride_id) As `No of Dulicate Ride Ids`
from `Months.DataMerge`;   -----found 0 duplicate ids

-- ride_id - all have length of 16
select LENGTH(ride_id),count(ride_id) from `Months.DataMerge`
group by ride_id;


--Checked few samples and found that the rows are different. Also the ride_ids are in the long integer form so they are downloaded in the short from from the source file.
--select cast(ride_id as string), Count(*) from `my-data-project-12345-408100.CycleTripData.CycleTripData2023`  group by ride_id having count(*) >1
---select cast(ride_id as string),count(*) from `tripdata2023.Months.DataMerge`
--groupby ride_id having count(*)>1


select * from `Months.DataMerge` where ride_id = '5.49E+15';

-- checking for unique Member_Casual values
select member_casual,count(member_casual) As`Count of eachmember_casual Values`
from `Months.DataMerge`
GROUP BY member_casual; ------ found member as 2205865,Casual as  1036694


--checking for unique bike types
select rideable_type,Count(rideable_type) from `Months.DataMerge`
GROUP BY(rideable_type); ----- found elecrtic,classic,docked bikes

--checking for rides where start date is greater than or equal to end date 
select count(*) As `No of Errored records`
from `Months.DataMerge` 
where started_at>=ended_at; --found 17511 rows

-- checking count of unique start stations
select count(DISTINCT start_station_id)
from `Months.DataMerge`;---found 1595 


-- checking count of unique end  stations
select COUNT(DISTINCT end_station_id)
from `Months.DataMerge`;---found 1609 
