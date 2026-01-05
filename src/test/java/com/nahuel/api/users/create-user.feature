Feature: Create user

  Scenario: Create new user successfully
    Given url baseUrl
    And path 'users'
    And request { name: 'Nahuel', email: 'nahuel@test.com', username: 'nahuelqa' }
    When method post
    Then status 201
    And match response.name == 'Nahuel'
    And match response.email == 'nahuel@test.com'
    And match response.id == '#number'
    And match response.id == 11
