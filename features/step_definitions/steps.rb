Given /^I am a new user on Teachable$/ do 
	visit 'http://takehome.zeachable.com/'
end

When /^I click enroll$/ do 
	click_link('Enroll Now')
end

Then /^I complete sign up$/ do
	fill_in('user_name', :with => 'Joseph Ayele')
	#Added a random number to the email string so that you can run the test with new accounts each time
	fill_in('user_email', :with => 'JosephAyele+'+rand(10000).to_s+'@gmail.com')
	fill_in('user_password', :with => 'test12')
	fill_in('user_password_confirmation', :with => 'test12')
	check('user_agreed_to_terms')
	click_button('Sign Up')
	click_link('take home test')
end

Then /^I complete the course$/ do
	click_button('enroll-button-top')
	click_link('Continue to Course')
	click_link('Start next lecture')
	click_link('lecture_complete_button')
	# Added a sleep function here so the button would load and be clickable
	sleep(1)
	click_link('lecture_complete_button')
	sleep(1)
	click_link('lecture_complete_button')
	sleep(1)
	click_link('lecture_complete_button')
end

Then /^I should see the course as 100% complete$/ do 
	#Checking for the text 100% complete 
	raise "Fail" if page.has_content?("100\% COMPLETE") == false
	
end