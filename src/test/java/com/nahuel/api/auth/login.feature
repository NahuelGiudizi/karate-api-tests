Feature: Login

  Scenario: Successful login
    Given url baseUrl
    And path 'login'
    And request { email: 'eve.holt@reqres.in', password: 'cityslicka' }
    When method post
    Then status 200
    And match response.token == '#string'
    And match response.token == '#notnull'

  Scenario: Login without password - Negative test
    Given url baseUrl
    And path 'login'
    And request { email: 'eve.holt@reqres.in' }
    When method post
    Then status 400
    And match response.error == '#string'

  Scenario: Login without email - Negative test
    Given url baseUrl
    And path 'login'
    And request { password: 'cityslicka' }
    When method post
    Then status 400
