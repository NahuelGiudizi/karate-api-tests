Feature: Update user

  Scenario: Update existing user
    Given url baseUrl
    And path 'users', 1
    And request { id: 1, name: 'Nahuel Giudizi', email: 'nahuel@qa.com', username: 'nahuelqa' }
    When method put
    Then status 200
    And match response.name == 'Nahuel Giudizi'
    And match response.email == 'nahuel@qa.com'
    And match response.id == 1
