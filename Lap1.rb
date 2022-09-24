#Yeu cau 1: Viet cau lenh hien thi "Xin chào" + tên SV + MSV

puts "Xin chào - Nguyễn Trọng Khang - 1911505310131"

#Yeu cau 2: Nhập 1 số từ bàn phím va xuat ra man hinh

puts "Nhap vao 1 so: "
number = gets.to_i
puts "So vua nhap la: #{number}"

#Yeu cau 3: Nhap 2 gia tri tu ban phim, so sanh và in ra gia tri lon hon

puts "Nhap vao gia tri 1: "
value1 = gets
puts "Nhap vao gia tri 2: "
value2 = gets
if value1 < value2 then
    puts "Gia tri lon hon la: #{value2}"
else
    puts "Gia tri lon hon la: #{value1}"
end
