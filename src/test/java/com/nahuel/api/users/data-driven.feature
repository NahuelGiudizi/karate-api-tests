Feature: Data driven users - Create multiple users

  Scenario Outline: Create multiple users with different data
    Given url baseUrl
    And path 'users'
    And request { name: '<name>', email: '<email>', username: '<username>' }
    When method post
    Then status 201
    And match response.name == '<name>'
    And match response.email == '<email>'
    And match response.id == 11

    Examples:
      | name    | email              | username    |
      | Ana     | ana@test.com       | anaqa       |
      | Lucas   | lucas@test.com     | lucasdev    |
      | Maria   | maria@test.com     | mariapm     |
      | Carlos  | carlos@test.com    | carlosops   |
