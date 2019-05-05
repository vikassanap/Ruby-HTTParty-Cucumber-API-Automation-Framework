Feature: Login
User performs login operation with valid credentials

Scenario: Valid credentials
When I request /sign_in POST request with parameter
|username			|<username>	    |
|password			|password 			|
Then JSON response code should be 200
And JSON user_id should be 51
