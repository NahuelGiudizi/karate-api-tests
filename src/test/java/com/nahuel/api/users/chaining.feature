Feature: Chaining example - Create and validate user

  Scenario: Create user and then retrieve it
    # Step 1: Create a new user
    Given url baseUrl
    And path 'users'
    And request { name: 'Nahuel', job: 'QA Automation' }
    When method post
    Then status 201
    * def userId = response.id
    * print 'Created user with ID:', userId

    # Step 2: Get the user we just created
    Given url baseUrl
    And path 'users', userId
    When method get
    Then status 200
    And match response.data.id == '#number'
