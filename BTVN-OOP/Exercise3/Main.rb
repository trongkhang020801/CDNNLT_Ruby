require_relative "CandidateA"
require_relative "CandidateB"
require_relative "CandidateC"
require_relative "ManagerCandidate"

candidates = []
managerCandidate = ManagerCandidate.new
while(true)
    puts("---------------------------------------")
    puts("Quản lý tuyển sinh")
    puts("1. Thêm mới thí sinh")
    puts("2. Hiển thị thông tin thí sinh")
    puts("3. Tìm kiếm thí sinh theo số báo danh")
    puts("4. Thoát khỏi chương trình")
    print("Chọn chức năng: ")
    n = gets.to_i 

    case n
    when 1
        puts("---------------------------------------")
        puts("Chọn khối thi")
        puts("1. A")
        puts("2. B")
        puts("3. C")
        type = gets.to_i
        
        case type
        when 1
            print("Nhập số báo danh: ")
            id = gets
            print "Nhập họ tên: "
            name = gets
            print "Nhập địa chỉ: "
            address = gets
            print "Nhập mức độ ưu tiên: "
            priority = gets
            block = "A"
            candidateA = CandidateA.new(id, name, address, priority, block)
            managerCandidate.add(candidateA, candidates)
        when 2
            print("Nhập số báo danh: ")
            id = gets
            print "Nhập họ tên: "
            name = gets
            print "Nhập địa chỉ: "
            address = gets
            print "Nhập mức độ ưu tiên: "
            priority = gets
            block = "B"
            candidateB = CandidateB.new(id, name, address, priority, block)
            managerCandidate.add(candidateB, candidates)
        when 3
            print("Nhập số báo danh: ")
            id = gets
            print "Nhập họ tên: "
            name = gets
            print "Nhập địa chỉ: "
            address = gets
            print "Nhập mức độ ưu tiên: "
            priority = gets
            block = "C"
            candidateC = CandidateC.new(id, name, address, priority, block)
            managerCandidate.add(candidateC, candidates)
        end

    when 2
        managerCandidate.showInfor(candidates)
    when 3
        print "Nhập số báo danh: "
        idf = gets
        puts "Thí sinh cần tìm: "
        managerCandidate.searchById(idf, candidates)
    when 4
        return
    end
end
