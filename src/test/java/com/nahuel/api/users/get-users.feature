Feature: Get users list

  Scenario: Get users from API
    Given url baseUrl
    And path 'users'
    When method get
    Then status 200
    And match response == '#array'
    And match response[0].id == '#number'
    And match response[0].email == '#string'
    And match response[0].name == '#string'
    And match response[0].username == '#string'
    And match response == '#[10]'
