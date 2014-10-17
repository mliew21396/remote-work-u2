
#Release 1

class ScopeChallenge
  $array_of_all_grades = []
  def initialize(array_of_grades)
    $grades = array_of_grades
    $number_of_grades = $grades.length
    $challenge_grade = 'A'
  end

  def sum
    $grades.inject{|mean, grade| mean + grade}
  end

  def mean
    sum / $number_of_grades
  end

  def calulate_grade
    case mean
      when 90..100
      "A"
      when 80..90
       "B"
      when 70..80
       "C"
      when 60..70
       "D"
      when 0..60
       "F"
      else
     "Error"
    end
  end

  def add_grades
    $array_of_all_grades << calulate_grade
  end

  def return_global_array
    return $array_of_all_grades
  end
end

grade = ScopeChallenge.new([80,95,64,71,100,38,95,100])

p grade.calulate_grade
grade.add_grades
p grade.return_global_array




#Release 3: Reflection