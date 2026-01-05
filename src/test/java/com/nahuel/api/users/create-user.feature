Feature: Create user

  Scenario: Create new user successfully
    Given url baseUrl
    And path 'users'
    And request { name: 'Nahuel', job: 'QA Engineer' }
    When method post
    Then status 201
    And match response.name == 'Nahuel'
    And match response.job == 'QA Engineer'
    And match response.id == '#string'
    And match response.createdAt == '#string'
