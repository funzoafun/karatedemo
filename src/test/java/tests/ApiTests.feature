Feature: Api Test For My CRUD Demo Application
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'

    # for all users
  Scenario: Test a Get Operation
    Given path '/users'
    When method GET
    Then status 200
    And print response

    #for a single user
  Scenario: Test a Get Operation
    Given path '/user/52'
    When method GET
    Then status 200
    And print response
    And print responseHeaders

    #to create a user
  Scenario: Test a POST Operation
    Given path '/user'
    And request {"name": "Prince", "username":"prince123@", "useremail":"prince@gmail.com"}
    And method POST
    Then status 200
    And print response
    And print responseTime






