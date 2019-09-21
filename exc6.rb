module Test
  def result
    if (@nota1 + @nota2) / 2.0 >= 4
      puts "Estudiante aprobado"
    else
      puts "Estudiante reprobado"
    end
  end
end

module Attendance
  def student_quantity
    puts self.quantity
  end
end

class Student
  @@quantity = 0
  include Test
  extend Attendance

  def initialize(name, nota1 = 4, nota2 = 4)
    @@quantity += 1
    @name = name
    @nota1 = nota1
    @nota2 = nota2
  end

  def self.quantity
      @@quantity
  end
end

10.times do
  print Student.new('Guillermo',rand(1..7), rand(1..7)).result
   # print "Alumno#{Student.student_quantity} = #{Student.new('Alumno',rand(1..7), rand(1..7)).result}"
end

puts Student.student_quantity
