require_relative "Document"

class Newspaper < Document
    attr_accessor :publishDay

    def initialize(id, publishCompany, releaseNumber, publishDay)
        super(id, publishCompany, releaseNumber)
        @publishDay = publishDay
    end

    def showInfor()
        print("Id: #{@id} - Publish Company: #{@publishCompany} - Release Number: #{@releaseNumber} - Publish Day: #{@publishDay}")
    end
end