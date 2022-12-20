Feature: Api Test For My CRUD Demo Application
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'

    Scenario: Deleting an object
      Given path '/user/57'
      When method DELETE
      Then status 200
      And print response