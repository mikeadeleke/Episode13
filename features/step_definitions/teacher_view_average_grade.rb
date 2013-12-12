Given /^I have a class$/ do
  @student = Student.new
  @teacher = Teacher.new
  @class = Class.new
end

Given /^their assignments are graded$/ do
  @teacher.submit_assignment(@student, Assignment.new)
  @teacher.record_grade(@student, 95)
  @teacher.assignment_for_student(@student).grade.should eq(95)
end

When /^I take the average of the grades$/ do
  @class_total = class_total
  @class_grade = class_total
end

Then /^the class has an average grade$/ do
  @class_total = class_total
  @class_grade = class_grade
  average_grade = @class_grade / @class_total
end
