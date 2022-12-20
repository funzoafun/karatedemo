Feature: Api Test For My CRUD Demo Application
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'

    #to create a user
  Scenario: Test a POST Operation
    Given path '/user'
    And request {"name": "Prince", "username":"prince123@", "useremail":"prince@gmail.com"}
    And method POST
    Then status 200
    And print response
    And print responseTime

    #file in the same package
  Scenario: POST data from external data file in same package
    Given path '/user'
    And def requestBody = read('userdata.json')
    And request requestBody
    When method POST
    Then status 200
    And print response

