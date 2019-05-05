When(/^I request \/sign_out GET request with user_id as (\d+)$/) do |arg1|
  	$last_response = HTTParty.get('http://test-app/api/users/sign_out',
		:headers => {"user_id"=>"#{arg1}"})
	$json_data = JSON.parse($last_response.body)
end
