class Person
    attr_accessor :name
    attr_accessor :age
    attr_accessor :career
    attr_accessor :identification

    def initialize(name, age, career, identification)
        @name = name
        @age = age
        @career = career
        @identification = identification
    end

    def showInfor()
        puts "Name: #{name} - Age: #{age} - Career: #{career} - Identification: #{identification}"
    end
end