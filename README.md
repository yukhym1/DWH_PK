DWH 1.0
The first version of DWH with dummy data.

Consists of:
- 3 transactional DBs (Movies, Sessions, Users) - PostgreSQL 15.3, pg_dump version: 15.3
- 1 Data Warehouse - PostgreSQL 15.3
- 1 Python script for the initial load into DWH - Python 3.11
- 4 Power BI reports


Parameters of PostgreSQL Server which were used:
	Host name/address: localhost
	Port: 5433
	Username: postgres
	Password: 1


Instructions for local deployment:
1) Create 3 empty databases in PostgreSQL Server  - Movies, Sessions, Users.
2) Restore the databases using Database restoration scripts from the /Databases folder.
3) Create emty database named DWH.
4) Restore DWH structure running the script from /DWH folder.
3) Run the Initial_load.py to upload the data into DWH (switch connection parameters appropriately in this script).

Additionally, if you want to generate new data run the scripts from the /Inserts folder in the respected DBs.



---------------------------------------------------------------------------------------------------------------------------

This tools were used as they are easy to handle, versatile and open-source, thus free. Also, they have potential for scalability to handle much larger amounts of data.

This is just basic version of DWH, which can be upgraded in numerous ways, such as:
- Set up ETL pipelines to regularly update data in DWH.
- Data validation in ETL.
- Data loading optimization.
- DWH and queries optimization.
- Access control and security measures.
