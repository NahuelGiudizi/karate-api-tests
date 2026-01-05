Feature: Get users list

  Scenario: Get users from page 2
    Given url baseUrl
    And path 'users'
    And param page = 2
    When method get
    Then status 200
    And match response.data[0].id == '#number'
    And match response.data[0].email == '#string'
    And match response.data[0].first_name == '#string'
    And match response.page == 2
    And match response.data == '#[6]'
