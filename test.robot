*** Settings ***
Library     RPA.Database

*** Test Cases ***
Query my database test
    connect to database     module_name=pyodbc  database=db14215456
    ...                     username=lucielavickovaDEV  password=skdN115fjdc957s55
    ...                     host=localhost\\SQLEXPRESS  port=62693
    @{query_result}    query    SELECT firstname, lastname, email, active FROM Users
    log  ${query_result}
    disconnect from database
