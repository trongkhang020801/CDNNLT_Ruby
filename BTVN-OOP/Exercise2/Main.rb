require_relative "Book"
require_relative "Journal"
require_relative "Newspaper"
require_relative "ManagerDocument"

documents = []
managerDocument = ManagerDocument.new

while(true)
    puts("---------------------------------------")
    puts("Quan Ly Tai Lieu")
    puts("1. Thêm mới tài liệu: Sách, tạp chí, báo")
    puts("2. Xóa tài liệu theo mã tài liệu")
    puts("3. Hiển thị thông tin về tài liệu")
    puts("4. Tìm kiếm tài liệu theo loại: Sách, tạp chí, báo")
    puts("5. Thoát khỏi chương trình")
    print("Chọn chức năng: ")
    n = gets.to_i

    case n
    when 1
        puts("---------------------------------------")
        puts("Chọn loại tài liệu")
        puts("1. Sách")
        puts("2. Tạp chí")
        puts("3. Báo")
        type = gets.to_i

        case type
        when 1
            print("Nhập ID: ")
            id = gets
            print("Nhập tên nhà xuất bản: ")
            publishCompany = gets
            print("Nhập số bản phát hành: ")
            releaseNumber = gets
            print("Nhập tên tác giả: ")
            author = gets
            print("Nhập số trang: ")
            pageNumber = gets

            book = Book.new(id, publishCompany, releaseNumber, author, pageNumber)
            managerDocument.addDocument(documents, book)
        when 2
            print("Nhập ID: ")
            id = gets
            print("Nhập tên nhà xuất bản: ")
            publishCompany = gets
            print("Nhập số bản phát hành: ")
            releaseNumber = gets
            print("Nhập số phát hành: ")
            publishNumber = gets
            print("Nhập tháng phát hành: ")
            publishMonth = gets

            journal = Journal.new(id, publishCompany, releaseNumber, publishNumber, publishMonth)
            managerDocument.addDocument(documents, journal)
        when 3
            print("Nhập ID: ")
            id = gets
            print("Nhập tên nhà xuất bản: ")
            publishCompany = gets
            print("Nhập số bản phát hành: ")
            releaseNumber = gets
            print("Nhập ngày phát hành: ")
            publishDay = gets

            newspaper = Newspaper.new(id, publishCompany, releaseNumber, publishDay)
            managerDocument.addDocument(documents, newspaper)
        end
    when 2
        puts "2"
        print "Nhập mã tài liệu: "
        id_rm = gets
        managerDocument.deleteDocument(id_rm, documents)
        puts "Danh sách tài liệu sau khi xóa: "
        managerDocument.showInfor(documents)
    when 3
        managerDocument.showInfor(documents)
    when 4
        puts "--------------------"
        puts "Chọn loại tài liệu: "
        puts "1. Sách"
        puts "2. Tạp chí"
        puts "3. Báo"
        tf = gets.to_i
        case tf
        when 1
            puts "Tài liệu sách:"
            managerDocument.searchByBook(documents)
        when 2
            puts "Tài liệu tạp chí:"
            managerDocument.searchByJournal(documents)
        when 3
            puts "Tài liệu báo:"
            managerDocument.searchByNewspaper(documents)
        end
    when 5
        return
    end
end