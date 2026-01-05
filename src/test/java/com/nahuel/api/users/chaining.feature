Feature: Chaining example - Create and validate user

  Scenario: Create user and then retrieve existing user
    # Step 1: Create a new user
    Given url baseUrl
    And path 'users'
    And request { name: 'Nahuel', email: 'nahuel@test.com' }
    When method post
    Then status 201
    * def userId = response.id
    * print 'Created user with ID:', userId

    # Step 2: Get an existing user (ID 1)
    Given url baseUrl
    And path 'users', 1
    When method get
    Then status 200
    And match response.id == 1
    And match response.name == '#string'
