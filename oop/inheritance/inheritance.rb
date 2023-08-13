require './student.rb'
require './teacher.rb'

student = Student.new('John', 18, '001')
student.print_student_info
student.study
student.do_exam
student.eat
student.sleep

puts '================================================================'

teacher = Teacher.new('Tony', 30, 'Math')
teacher.print_teacher_info
teacher.teach
teacher.test
teacher.eat
teacher.sleep
