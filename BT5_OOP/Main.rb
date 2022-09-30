require_relative "CanBo"
require_relative "CongNhan"
require_relative "KySu"
require_relative "NhanVien"
require_relative "QLCB"

qlcb = QLCB.new
canBos = []
while(true)
    puts("---------------------------------------")
    puts("Quan Ly Can Bo")
    puts("1. Them moi")
    puts("2. Tim kiem theo ho ten")
    puts("3. Hien thi thong tin danh sach can bo")
    puts("4. Thoat")
    print("Chon chuc nang: ")
    n = gets.to_i

    case n
    when 1
        puts("---------------------------------------")
        puts("Them moi Can Bo")
        puts("1. Them nhan vien")
        puts("2. Them cong nhan")
        puts("3. Them ky su")
        puts("4. Thoat")
        print("Chon chuc nang: ")
        a = gets.to_i
        case a
        when 1
            print("Nhap ho ten: ")
            hoTen = gets
            print("Nhap tuoi: ")
            tuoi = gets
            print("Nhap gioi tinh: ")
            gioiTinh = gets
            print("Nhap dia chi: ")
            diaChi = gets
            print("Nhap cong viec: ")
            congViec = gets
            nhanVien = NhanVien.new(hoTen, tuoi, gioiTinh, diaChi, congViec)
            qlcb.themMoi(canBos, nhanVien)
        when 2
            print("Nhap ho ten: ")
            hoTen = gets
            print("Nhap tuoi: ")
            tuoi = gets
            print("Nhap gioi tinh: ")
            gioiTinh = gets
            print("Nhap dia chi: ")
            diaChi = gets
            print("Nhap cap bac: ")
            bac = gets
            congNhan = CongNhan.new(hoTen, tuoi, gioiTinh, diaChi, bac)
            qlcb.themMoi(canBos, congNhan)
        when 3
            print("Nhap ho ten: ")
            hoTen = gets
            print("Nhap tuoi: ")
            tuoi = gets
            print("Nhap gioi tinh: ")
            gioiTinh = gets
            print("Nhap dia chi: ")
            diaChi = gets
            print("Nhap nganh dao tao: ")
            nganhDaoTao = gets
            kySu = KySu.new(hoTen, tuoi, gioiTinh, diaChi, nganhDaoTao)
            qlcb.themMoi(canBos, kySu)
        else
            print("Khong hop le")
        end
    when 2
        print("Nhap ho ten muon tim: ")
        key = gets.to_s
        qlcb.timKiem(key, canBos)
    when 3 
        qlcb.hienThiDanhSach(canBos)
    when 4
        return
    end
end