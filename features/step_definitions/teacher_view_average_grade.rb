Given /^I add all the grades in one class$/ do
  class_grade = record_grade(student, grade)(n+1) #Not sure how to write a block that keeps adding a students until you run out of students
end

Given /^the total number of students is added together$/ do
  class_total = studets(1..n) #unsure how to add all the students together 
end

When /^there is a cummulative class grade and a total number of students$/ do
	class_grade = class_grade
	class_total = class_total
end

Then /^the I can get the class average by dividing the class grade by number of students$/ do
	class_average = class_grade / class_total
end
