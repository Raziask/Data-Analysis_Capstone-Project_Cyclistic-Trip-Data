-- Merging all months of data into one single table named DataMerge

create table Months.DataMerge As(


SELECT * FROM `tripdata2023.Months.Jan` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Feb` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Mar` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Apr` 
UNION ALL
SELECT * FROM `tripdata2023.Months.May`
UNION ALL
SELECT * FROM `tripdata2023.Months.June`  
UNION ALL
SELECT * FROM `tripdata2023.Months.July` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Aug` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Sep` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Oct` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Nov` 
UNION ALL
SELECT * FROM `tripdata2023.Months.Dec` );
