require_relative "Document"

class Journal < Document
    attr_accessor :publishNumber
    attr_accessor :publishMonth

    def initialize(id, publishCompany, releaseNumber, publishNumber, publishMonth)
        super(id, publishCompany, releaseNumber)
        @publishNumber = publishNumber
        @publishMonth = publishMonth
    end

    def showInfor()
        print("Id: #{@id} - Publish Company: #{@publishCompany} - Release Number: #{@releaseNumber} - Publish Number: #{@publishNumber} - Publish Month: #{@publishMonth}")
    end
end