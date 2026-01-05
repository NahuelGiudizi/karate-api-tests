Feature: User validation tests

  Scenario: Get single user successfully
    Given url baseUrl
    And path 'users', 1
    When method get
    Then status 200
    And match response.id == 1
    And match response.email == '#string'
    And match response.name == '#string'

  Scenario: Get non-existent user - Negative test
    Given url baseUrl
    And path 'users', 9999
    When method get
    Then status 404

  Scenario: Delete user
    Given url baseUrl
    And path 'users', 1
    When method delete
    Then status 200
