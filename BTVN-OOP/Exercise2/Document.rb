class Document
    attr_accessor :id
    attr_accessor :publishCompany
    attr_accessor :releaseNumber

    def initialize(id, publishCompany, releaseNumber)
        @id = id
        @publishCompany = publishCompany
        @releaseNumber = releaseNumber
    end
end