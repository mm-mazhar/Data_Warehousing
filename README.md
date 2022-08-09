# Data Warehousing

In this lab, you will use PostgreSQL/mySQL Database. PostgreSQL/mySQL is a Relational Database Management System (RDBMS) designed to efficiently store, manipulate, and retrieve data.

### Scenario

You are a data engineer hired by a solid waste management company. The company collects and recycles solid waste across major cities in the country of Brazil. The company operates hundreds of trucks of different types to collect and transport solid waste. The company would like to create a data warehouse so that it can create reports like

- total waste collected per year per city
- total waste collected per month per city
- total waste collected per quarter per city
- total waste collected per year per trucktype
- total waste collected per trucktype per city
- total waste collected per trucktype per station per city

You will use your data warehousing skills to design and implement a data warehouse for the company.

### Objectives

In this lab you will:

- Design a Data Warehouse
- Load data into Data Warehouse
- Write aggregation queries
- Create MQTs
- Create a Dashboard

### About the dataset

The dataset you would be using in this assignment is not a real life dataset. It was programmatically created for this assignment purpose.

### Prerequisites

You need use PostgreSQL Database to proceed with this assignment.

This [lab](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0110EN-SkillsNetwork/labs/Lab%20-%20Create%20Tables%20and%20Load%20Data%20in%20PostgreSQL%20using%20pgAdmin/instructional-labs.md.html?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDB0260ENSkillsNetwork27338483-2022-01-01) will guide you to understand how to Create Tables and Load Data in PostgreSQL using pgAdmin

OR

You need access to a cloud instance of IBM DB2 to proceed with this assignment.

If you do not have an instance of IBM DB2 on cloud, follow the instructions in this [lab](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMDeveloperSkillsNetwork-DB0201EN-SkillsNetwork/labs/Labs_Coursera_V5/labs/Lab%20-%20Sign%20up%20for%20IBM%20Cloud%20-%20Create%20Db2%20service%20instance%20-%20Get%20started%20with%20the%20Db2%20console/instructional-labs.md.html?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDB0260ENSkillsNetwork27338483-2022-01-01) to create one.

You need access to Cognos Analytics.

This [lab](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/AnalyzingDataWithCognos/HandsOn_DB2CognosAnalytics.md.html?utm_medium=Exinfluencer&utm_source=Exinfluencer&utm_content=000026UJ&utm_term=10006555&utm_id=NA-SkillsNetwork-Channel-SkillsNetworkCoursesIBMDB0260ENSkillsNetwork27338483-2021-01-01) will guide to get your access to Cognos Analytics, and also get you started with how to use it to analyze the data.

## Exercise 1 - Design a Data Warehouse

The solid waste management company has provied you the sample data they wish to collect.

![Table](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Final%20Assignment/images/solid-waste-trips-new.png)

You will start your project by designing a Star Schema warehouse by identifying the columns for the various dimension and fact tables in the schema.

Task 1 - Design the dimension table MyDimDate
Write down the fields in the MyDimDate table in any text editor one field per line. The company is looking at a granularity of day. Which means they would like to have the ability to generate the report on yearly, monthly, daily, and weekday basis.

Here is a partial list of fields to serve as an example:

dateid
month
monthname
...
...

Take a screenshot of the fieldnames for the table MyDimDate.

Name the screenshot 1-MyDimDate.jpg. (Images can be saved with either the .jpg or .png extension.)

![1-MyDimDate](https://i.imgur.com/OepyNuz.jpg)

Task 2 - Design the dimension table MyDimWaste
Write down the fields in the MyDimWaste table in any text editor one field per line.

Take a screenshot of the fieldnames for the table MyDimWaste.

Name the screenshot 2-MyDimWaste.jpg. (Images can be saved with either the .jpg or .png extension.)

![2-MyDimWaste](https://i.imgur.com/Bkxo5KF.jpg)

Task 3 - Design the dimension table MyDimZone
Write down the fields in the MyDimZone table in any text editor one field per line.

Take a screenshot of the fieldnames for the table MyDimZone.

Name the screenshot 3-MyDimZone.jpg. (Images can be saved with either the .jpg or .png extension.)

![3-MyDimZone.jpg](https://i.imgur.com/h2QP1uR.jpg)

Task 4 - Design the fact table MyFactTrips
Write down the fields in the MyFactTrips table in any text editor one field per line.

Take a screenshot of the fieldnames for the table MyFactTrips.

Name the screenshot 4-MyFactTrips.jpg. (Images can be saved with either the .jpg or .png extension.)

![4-MyFactTrips](https://i.imgur.com/rRv6kTe.jpg)

## Exercise 2 - Create schema for Data Warehouse on DB2

In this exercise you will create the tables, you have designed in the previous exercise.

Task 5 - Create the dimension table MyDimDate

Create the MyDimDate table.

Take a screenshot of the sql statement you used to create the table MyDimDate.

Name the screenshot 5-MyDimDate.jpg. (Images can be saved with either the .jpg or .png extension.)

![5-MyDimDate](https://i.imgur.com/b437JGM.jpg)

Task 6 - Create the dimension table MyDimWaste

Create the MyDimWaste table.

Take a screenshot of the sql statement you used to create the table MyDimWaste.

Name the screenshot 6-MyDimWaste.jpg. (Images can be saved with either the .jpg or .png extension.)

![6-MyDimWaster](https://i.imgur.com/krfSZLX.jpg)
