class Family
    attr_accessor :address

    def initialize(persons, address)
        @persons = persons
        @address = address
    end

    def showInfor()
        for person in persons do
            person.showInfor
            print "Address: #{address}"
        end
    end
end