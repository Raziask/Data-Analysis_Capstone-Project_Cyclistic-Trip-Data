Google Data Analytics Capstone Project

I worked on the Google Data Analytics Capstone Project, Case Study 1. I will be diving into the background, my full process of cleaning, analyzing and visualizing the data, along with my final suggestions and summary of the data. 
Below is a table of contents in case you want to go to a specific section. 
Table of Contents:
1 . Background 
2.	Process 
   Microsoft Excel ,SQL,Tableau 
3.	Finished Project 
4.	Summary of Data 
5.	Business Suggestions 
6.	What I Learned 
____________________________________________________________________________________________
Background
About the company
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations
across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to
broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships.
Customers who purchase single-ride or full-day passes are referred to as casual riders.Customers who purchase annual memberships are Cyclistic members.

My Role: In this scenario I am a junior data analyst at Cyclistic and my team has been tasked with the overall goal (see below) of designing marketing strategies 
Overall Goal: Design marketing strategies aimed at converting casual riders into annual members.
Business Question: "How do annual members and casual riders use Cyclistic bikes differently?"
Below I will describe step-by-step the process I used to for this project. If you want to skip ahead to the business suggestions move onto the section "Insights".

 _____________________________________________________________

To do this, I will follow the six steps of the data analysis process: Ask, Prepare, Process, Analyze and Share, and Act. SQL Queries Used in perform the above steps:
__________________________________________________________________________________________
Ask:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?
___________________________________________________________________________________________
Prepare

Use Cyclistic’s historical trip data to analyze and identify trends. Download the previous 12
months of Cyclistic trip data  2023 here. (Note: The datasets have a different name because Cyclistic
is a fictional company. For the purposes of this case study, the datasets are appropriate and
will enable you to answer the business questions. The data has been made available by
Motivate International Inc. under this license.) This is public data that you can use to explore
how different customer types are using Cyclistic bikes. But note that data-privacy issues
prohibit you from using riders’ personally identifiable information. This means that you won’t be
able to connect pass purchases to credit card numbers to determine if casual riders live in the
Cyclistic service area or if they have purchased multiple single passes.
I first analyzed the data separately (each month) in Excel, then used Big Querry SQL to analyze the data as a whole (one year). Finally I created a dashboard in Tableau to generate Insights.
Microsoft Excel
I initially wanted to gather and analyze my data in Excel because it was the tool I was most familiar with and I could get a general understanding of the data quicker. I did not combine all of the spreadsheets into one because that would've taken more processing power than my computer had. So I   cleaned the data each month and I add the new columns and tried  to generate the pivot tables and graphs.

 BigQuery sandbox:
 
1.	I began downloading the data from divvy-tripdata, and turning the .csv files into excel spreadsheets. I downloaded the most recent year of data 2023 Added two columns to all of the months:
a.	ride_length calculated the total ride length for each trip using the start_at column which was: ending time minus starting time. 
b.	day_of_week calculated the day of the week for each trip using the start_at column date. 
2.	Went over the business task and the information I had at hand and how that could be used to figure out how members and casual riders use the bike service differently
3.	Came up with metrics to look at such as : 
a.	total number of rides per hour, per day of the month, per day of the week, and for different bike types 
b.	Average ride length between members and casual

1.	(12 months data)  and also I removed some of  the data in some months  because the limit of the file is so high for that I need to have cloud to save and store it.
__________________________________________________________
Analyze

Data Source: divvy_tripdata
1.	Data Merging
2.	Data Exploration
3.	Data Cleaning
4.	Data Analysis

Members has the most rides at 68% of Total Rides.


![image](https://github.com/Raziask/Raziask/assets/159090090/d87fed32-d537-45e6-ae3c-379dbf6c4ffc)




The Average RideLength typically mirrored the number of rides.Meaning they had similar high and lows.The average ride length  for casual riders was 24 mins and members was 11 mins.

![image](https://github.com/Raziask/Raziask/assets/159090090/fd73980c-5e9a-4748-a2cb-14bff920536e)







The most popular Bike for both wss Classic bikes and  for casula bikes was alone for the docked bikes.

![image](https://github.com/Raziask/Raziask/assets/159090090/0cae31a2-a3a9-4414-b980-851f2a9773e5)
![image](https://github.com/Raziask/Raziask/assets/159090090/7b5e09f0-acde-4321-a05b-ec231ebb4117)




Both Members and casual rides afternoon (12pm-6pm) and the 5pm was the most and night 4am being the least busy.

![image](https://github.com/Raziask/Raziask/assets/159090090/29ce26ff-5748-4c6f-9d67-d77eaf1c8037)



Thursday was the most popular weekday for the both.Members used the bikes equally through out the bike with a slight increase on Tuesday,while the casual rides equally through out the weekdays but the most on weekends.Saturdays in particular. 

![image](https://github.com/Raziask/Raziask/assets/159090090/921d3d35-3b04-486b-81ba-13da25f85099)
![image](https://github.com/Raziask/Raziask/assets/159090090/ab0502ce-9c16-44c9-96f4-4c1f4ffd5a77)






April to October was the busiest season for both type of riders. They ride most in April.While the least in (December-February).Specially in February.

![image](https://github.com/Raziask/Raziask/assets/159090090/60b9436b-2d88-4b56-b2ca-9a4efe2ac62e)

_________________________________________________________
Share

a.	Total Rides per Weekday - calculated the total rides for members and casual and separated it by day of the week; used a Stacked Bar chart

b.	Average Ride Length - calculated the average ride length for members and casual and separated it by day of the week; used  Horizontal Bar chart

c.	Total Rides per Hour - calculated the total rides for members and casual separated by the time of the day (24hr); used a Bar  comparison chart 

d.	Total Rides per Day - calculated the total rides for members and casual separated by the day of the month; used a Horizontal  Bar chart 

e.	Total Rides per Bike Type - calculated the total rides for members and casual separated by Bike type; used  Stacked Bar chart 

f. Make a dashboard by useing all charts for insights.

Popular Bike: Classic

Busiest Time :Afternoon

Busiest Weekday: Thursday

Busiest Month :April

Most rides by User type:Member

Average Ride Length : 32 mins

![image](https://github.com/Raziask/Raziask/assets/159090090/9a4ba449-3dfc-423e-8d59-1d401d4a8fe3)
_______________________________________________________
Act
•	The most popular bike among with riders was the classic.
•	Busiest time was afternoon and the peak time was at 5PM for both casual riders and members. 
•	Busiest weekday was Thurdsay, member riders used the service the most on the weekends. 
•	Busiest month was April for both types of riders. 
•	Most rides by User Type was members but casual riders weren't far behind. 
•	The average ride length was 32 minutes but casual riders on average rode 40  minutes longer than members
_________________________________________________________
BUSINESS SUGGESTIONS
This was the hardest part for me for the whole project. I have never provided suggestions for a business nor worked in marketing. Any feedback here would be appreciated. 
These are my suggestions for the marketing team to convert casual riders to annual members:
1.	Personalize discounts and show perks in the membership program based on their preferences and riding habits.
2.	Emphasize the benefits of memberships, including discounts during busy times of the year like during Summer, or on the weekends. 
3.	Have existing members to share their stories about how using Cyclistic's system has changed their life, to create a sense of community, offer a discount if they do so this will help encourage new riders to join the program.
______________________________________________________________
WHAT I LEARNED
Below is what I learned/practiced from over 50 hours spent on this project: 
•	Pivot Tables in Microsoft Excel
•	Practice using SQL for data analysis and cleaning specifically using the  GroupBy Querries for data analysis 
•	Graphs in Tableau, edited visual elements along with creating different charts and filters. 
•	Design elements of an effective dashboard
 

 
