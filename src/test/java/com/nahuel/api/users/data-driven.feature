Feature: Data driven users - Create multiple users

  Scenario Outline: Create multiple users with different data
    Given url baseUrl
    And path 'users'
    And request { name: '<name>', job: '<job>' }
    When method post
    Then status 201
    And match response.name == '<name>'
    And match response.job == '<job>'

    Examples:
      | name    | job                |
      | Ana     | QA                 |
      | Lucas   | Developer          |
      | Maria   | Product Manager    |
      | Carlos  | DevOps Engineer    |
