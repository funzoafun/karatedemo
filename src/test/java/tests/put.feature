Feature: Api Test For My CRUD Demo Application
  Background:
    * url 'http://localhost:8080'
    * header Accept = 'application/json'

    Scenario: PUT method
      Given path '/user'
      And def requestBody = read('userdata.json')
      And request requestBody
      When method PUT
      Then status 200
      And print response