Feature: Api Test For My CRUD Demo Application
  Scenario: Test a Get Operation
    Given url "http://localhost:8080/users"
    When method GET
    Then status 200
