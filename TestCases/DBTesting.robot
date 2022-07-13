*** Settings ***
Library  DatabaseLibrary
Library  OperatingSystem

Suite Setup  Connect To Database    pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBHost}   127.0.0.1
${DBName}   realparsmodel
${DBPass}   root
${DBPort}   3306
${DBUser}   root

*** Test Cases ***
#Create person table
#    ${output}=  Execute SQL String  CREATE TABLE person (id integer unique,first_name varchar(20),last_name varchar(20));
#    log to console  ${output}
#    should be equal as strings  ${output}   None

#Inserting Data in person Table
#    # Single record
#    ${output}=  Execute SQL String  Insert into person values(105,"Grzegorz","Gretzky");
#    log to console  ${output}
#    should be equal as strings  ${output}   None

#Inserting Data in person Table
#    # Multiple records
#    ${output}=  Execute SQL Script  ./TestData/mydb_person_insertData.sql
#    log to console  ${output}
#    should be equal as strings  ${output}   None

#Check Daria record is present in Person Table
#    check if exists in database     select id from realparsmodel.person where first_name="Daria"

#Check Krystian record is not present in Person Table
#    check if not exists in database     select id from realparsmodel.person where first_name="Krystian"

#Check if Person Table exists in realparsmodel database
#    table must exist    person

#Verify if row count is Zero
#    row count is 0  SELECT * FROM realparsmodel.person WHERE first_name = "xyz";

#Verify if row count is Equal to Value
#    row count is equal to x  SELECT * FROM realparsmodel.person WHERE first_name = "Grzegorz";  2

#Verify if row count is Greater than Some Value
#    row count is greater than x     SELECT * FROM realparsmodel.person WHERE first_name = "Grzegorz";  1

#Verify if row count is Less than Some Value
#    row count is less than x     SELECT * FROM realparsmodel.person WHERE first_name = "Grzegorz";  3

#Update record in Person Table
#    ${output}=  Execute SQL String  Update realparsmodel.person set last_name="Tonta" where id=105;
#    log to console  ${output}
#    should be equal as strings  ${output}   None

#Show all records from Person Table
#    @{queryResults}=    query       Select * from realparsmodel.person;
#    log to console  many @{queryResults}

#Delete Records from Person Table
#    Execute SQL String  Delete from realparsmodel.person;
#    should be equal as strings  ${output}   None