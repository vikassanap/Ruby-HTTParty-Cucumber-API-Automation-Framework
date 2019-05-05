When(/^I request \/sign_in POST request with parameter$/) do |table|
	criteria = table.rows_hash
  	name =  criteria.to_json
  	$last_response = HTTParty.post('http://test-app/api/users/sign_in',
  		:body => name,
		:headers => {"Content-Type"=>"application/json"})
	$json_data = JSON.parse($last_response.body)
end

Then(/^JSON user_id should be (\d+)$/) do |arg1|
    $json_data['data']['id'].to_s.should match arg1.to_s
end
