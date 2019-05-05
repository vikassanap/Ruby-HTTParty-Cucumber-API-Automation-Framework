Feature: Logout
User provides logout user_id for get request.

Scenario: Valid credentials
When I request /sign_out GET request with user_id as 51
Then JSON response code should be 200
