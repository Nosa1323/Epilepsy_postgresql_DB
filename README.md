# Epilepsy_postgresql_DB

This script is designed to automate the process of loading data from Excel tables into a database(DB). Here, we use PostgreSql and its graphic inteface pgAdmin4. 

**The aim of this script** are connecting to DB, creating and altering existing tables.

**Input data**

There are dataset contains tables connected with glutamine synthase(GS), glutamate transporter(GLT), glial fibrillar acid protein(GFAP), connexin 43(Cx43), s100b characteristics in control group ('ctrl') and experimental group ('SE'): Volume, Surface Area, XYZ mass, Feret diameter. For our analysis we work only with Volume and Surface Area.

**Result**
1. First of all, we have designed a general relationship scheme for the future database <img src="https://github.com/Nosa1323/Epilepsy_postgresql_DB/blob/main/assets/db_schema.png" width = "800">
2. New DB 'epilepsy_db' was created 
3. We connected with this DB due to psycopg2 and sqlalchemy
4. We created metadata contains table realationships
5. The dataset was uploaded to dataframe. Further, relations in the database were filled with this data.
6. We send sql-statement to DB in python and it was performed successful. It suggests that our DB works.
7. To verify this, we ran the same query through pgAdmin4 and compared both with the original dataset and with what we output through python

In python

<img src="https://github.com/Nosa1323/Epilepsy_postgresql_DB/blob/main/assets/python_check.png" width = "500">

In pgAdmin4

<img src="https://github.com/Nosa1323/Epilepsy_postgresql_DB/blob/main/assets/pgAdmin4_check.png" width = "500">

In excel(raw)

<img src="https://github.com/Nosa1323/Epilepsy_postgresql_DB/blob/main/assets/excel_check.png" width = "600">


This DB can be used to store data and it also provide an inserting new data in easy way.

Profit!

**Dependencies**

```
Python 3.8.12
glob 0.7
pandas 1.3.4
psycopg2 2.8.6 
sqlalchemy 1.4.22 

```
