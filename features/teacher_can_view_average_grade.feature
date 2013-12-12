Feature: Teacher can view average grade

	As a teacher
	I can view the average grade of the class
	So I can see how we're doing as a whole

	Scenario: Teacher can view average grade
		Given I have a class
	    And their assignments are graded
	    When I take the average of the grades
	    Then the class has an average grade
