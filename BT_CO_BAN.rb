# 1. Nhập các số vào mảng, in ra số lớn nhất, nhỏ nhất, giá trị trung bình của mảng.
puts("Nhap vao so luong phan tu co trong mang: ")
n = gets.to_i
arr = []
i=0
loop do
    arr[i]=gets
    i+=1
    if i==n
        break
    end
end
s=0
for x in arr
    s+=x
end
puts("Số lớn nhấ: #{arr.max}")
puts("Số nhỏ nhất: #{arr.min}")
puts("Gia tri trung binh cua mang: #{s/4.0}")