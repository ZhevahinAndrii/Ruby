class Student
    attr_reader :surname,:group,:geometry,:algebra,:informatics

    def initialize(surname,group,geometry,algebra,informatics)
        @surname = surname
        @group = group
        group.add_student(self)
        @geometry = geometry
        @algebra = algebra
        @informatics = informatics
    end

    def has_debt?
        geometry < 3 || algebra<3 || informatics<3
    end

    def quality_of_study
        marks = [geometry,algebra,informatics]
        if marks.any?{|element| element < 3}
            return 'Має борги'
        elsif marks.any?{|element| element < 4}
            return 'Задовільно'
        elsif marks.any?{|element| element < 5}
            return 'Добре'
        else
            return 'Відмінно'
        end
    end

    def best_subject
        subjects = {Геометрія:geometry,Алгебра:algebra,Інформатика:informatics}
        return subjects.key(subjects.values.max)
    end
    def average_mark
        return (geometry+algebra+informatics) / 3.0
    end
end

class Group
    attr_reader :name,:students

    def initialize(name)
        @name = name
        @students = []
    end

    def add_student(student)
        @students << student
    end

    def average_performance
        return 0 if @students.empty?

        total_performance = @students.map do |student|
             student.average_mark
        end.sum
        total_performance / @students.length
    end

    def percentage_of_cool_guys
        count = 0
        @students.each do |student|
            if student.quality_of_study == 'Добре' || student.quality_of_study == 'Відмінно'
                count+=1
            end
        end
        return count / @students.length.to_f * 100
    end
    
end


group1 = Group.new('IPS-31')
group2 = Group.new('IPS-32')
groups = [group1, group2]
students = [
    Student.new('Жевагін',group1,4,4,5),
    Student.new('Кобзар',group1,4,2,4),
    Student.new('Худик',group1,4,4,3),
    Student.new('Павлюк',group2,2,2,3),
    Student.new('Чорненький',group2,4,4,3),
    Student.new('Гончар',group2,4,4,5)
]

puts 'Студенти з заборгованістю:'

students.each do |student|
    if student.has_debt?
        puts "#{student.surname} Группа:#{student.group.name}"
    end
end

puts 'Інформація про студентів:'

students.each do |student|
    puts "Прізвище:#{student.surname}\t\t Якість навчання:#{student.quality_of_study}\t\t Кращий предмет:#{student.best_subject}"
end

sorted_groups = groups.sort_by{|group| -group.average_performance}

puts 'Групи в порядку спадання середнього балу серед студентів'

sorted_groups.each do |group|
    puts "#{group.name}:Середній бал студентів - #{group.average_performance}"
end

puts 'Статистика крутих типів по групам(у відсотках):'

groups.each do |group|
    puts "#{group.name}:#{group.percentage_of_cool_guys}"
end