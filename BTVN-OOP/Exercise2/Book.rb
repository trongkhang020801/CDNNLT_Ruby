require_relative "Document"

class Book < Document
    attr_accessor :author
    attr_accessor :pageNumber

    def initialize(id, publishCompany, releaseNumber, author, pageNumber)
        super(id, publishCompany, releaseNumber)
        @author = author
        @pageNumber = pageNumber
    end

    def showInfor()
        print("Id: #{@id} - Publish Company: #{@publishCompany} - Release Number: #{@releaseNumber} - Author: #{author} - Number Page: #{@pageNumber}")
    end

end