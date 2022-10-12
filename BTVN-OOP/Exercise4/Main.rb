require_relative "Person"
require_relative "Family"
require_relative "Town"

print "Nhập số hộ dân: "
n = gets.to_i


for i in 1..n do
    puts "Hộ dân thứ #{i}"
    print "Nhập số thành viên: "
    members = gets.to_i
    print "Nhập địa chỉ: "
    address = gets

    member_list = []
    for member in 1..members do
        puts "Nhập thành viên thứ #{member}: "
        print "Nhập họ tên: "
        name = gets
        print "Nhập tuổi: "
        age = gets
        print "Nhập nghề nghiệp: "
        career = gets
        print "Nhập số cmnd: "
        identification = gets
        member = Person.new(name, age, career, identification)
        member_list.push(member)
    end
    families = Family.new(member_list, address)
end

towns = Town.new(families)
towns.showInfor