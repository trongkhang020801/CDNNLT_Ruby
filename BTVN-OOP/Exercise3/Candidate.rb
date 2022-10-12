class Candidate
    attr_accessor :id
    attr_accessor :name
    attr_accessor :address
    attr_accessor :priority
    
    def initialize(id, name, address, priority)
        @id = id
        @name = name
        @address = address
        @priority = priority
    end
end