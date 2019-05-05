Then(/^JSON response code should be (\d+)$/) do |arg1|
	$last_response.code.to_s.should match arg1
end