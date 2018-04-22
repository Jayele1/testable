Feature: Course Completeion Indicator

Background:
	Given I am a new user on Teachable

Scenario: New Student Completes a course
	And I click enroll
	And I complete sign up
	When I complete the course
	Then I should see the course as 100% complete