Feature: Teacher can view average grade

	As a teacher
	I can view the average grade of the class
	So I can see how we're doing as a whole

	Scenario: Teacher can view average grade
		Given I add all the grades in one class
	    And the total number if students is added together 
	    When there is a cummulative class grade and a total number of students
	    Then the I can get the class average by dividing the class grade by number of students 
