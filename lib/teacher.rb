class Teacher
  def initialize
    @assignments = {}
    @class_total = class_total
    @class_grade = class_grade
  end

  def record_grade(student, grade)
    assignment = @assignments[student]
    assignment.grade = grade
    @assignments[student] = assignment
  end

  def submit_assignment(student, assignment)
    @assignments[student] = assignment
  end

  def assignment_for_student(student)
    @assignments[student]
  end

  def class
    @class_total = @student * 20
    @class_grade = @student.grade * 20
  end

  def average_grade
    average_grade = AverageGrade.new
    average_grade.average(class_grade / class_total)
  end
end
