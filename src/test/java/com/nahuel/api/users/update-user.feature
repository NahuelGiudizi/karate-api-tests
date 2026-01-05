Feature: Update user

  Scenario: Update existing user
    Given url baseUrl
    And path 'users', 2
    And request { name: 'Nahuel', job: 'Senior QA Engineer' }
    When method put
    Then status 200
    And match response.job == 'Senior QA Engineer'
    And match response.name == 'Nahuel'
    And match response.updatedAt == '#string'
