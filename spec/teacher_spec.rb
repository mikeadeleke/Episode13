require_relative "../lib/teacher"
require "rspec"

describe Teacher do
  it "should store assignments" do
    student = stub
    assignment = stub
    subject.submit_assignment(student, assignment)
    subject.assignment_for_student(student).should eq(assignment)
  end

  describe "should record a grade" do
    it "should record the grade" do
      student = stub
      assignment = mock
      assignment.should_receive(:grade=).with(95)
      subject.submit_assignment(student, assignment)
      subject.record_grade(student, 95)
    end
  end
end

describe AverageGrade do
  it "should view average grade for the class" do
    AverageGrade.new.average.should eq(class_grade/class_total)
  end
end