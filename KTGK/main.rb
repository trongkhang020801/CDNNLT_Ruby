require_relative "PhuongTien"
require_relative "Oto"
require_relative "Xemay"
require_relative "XeTai"
require_relative "QLPT"

qlpt = QLPT.new
phuongtien2 = []
while(true)
    puts("---------------------------------------")
    puts("Quan Ly Phuong Tien")
    puts("1. Them moi")
    puts("2. Tim kiem theo Hang San xuat hoac mau xe hoac bien so: ")
    puts("3. Hien thi thong tin danh sach phuong tien")
    puts("4: Xoa theo ID")
    puts("5. Thoat")
    print("Chon chuc nang: ")
    n = gets.to_i

    case n
    when 1
        puts("---------------------------------------")
        puts("Them moi phuong tien: ")
        puts("1. Them Oto")
        puts("2. Them Xe Tai")
        puts("3. Them Xe May")
        puts("4. Thoat")
        print("Chon chuc nang: ")
        a = gets.to_i
        case a
        when 1
            print("Nhap ID: ")
            id131 = gets
            print("Nhap HSX: ")
            hsx131 = gets
            print("Nhap Nam SX: ")
            ysx131 = gets
            print("Nhap Dong Xe: ")
            dsx131 = gets
            print("Nhap gia ban: ")
            gia131 = gets
            print("Nhap bien so: ")
            bs131 = gets
            print("Nhap mau xe: ")
            ms131 = gets
            print("Nhap so cho: ")
            socho131 = gets
            print("Nhap kieu dong co: ")
            kdc131 = gets
            print("Nhap nhien lieu: ")
            nhienlieu131 = gets
            print("Nhap so tui khi: ")
            tuikhi131 = gets
            print("Nhap ngay dang kiem: ")
            naydk131 = gets
            oto = Oto.new(id131, hsx131, ysx131, dsx131, gia131, bs131, ms131, socho131, kdc131, nhienlieu131, tuikhi131, naydk131)
            qlpt.themMoi(phuongtien2, oto)
        when 2
            print("Nhap ID: ")
            id131 = gets
            print("Nhap HSX: ")
            hsx131 = gets
            print("Nhap Nam SX: ")
            ysx131 = gets
            print("Nhap Dong Xe: ")
            dsx131 = gets
            print("Nhap gia ban: ")
            gia131 = gets
            print("Nhap bien so: ")
            bs131 = gets
            print("Nhap mau xe: ")
            ms131 = gets
            print("Nhap cong xuat: ")
            congSuat131 = gets
            print("Nhap dung tich binh xang: ")
            dtbx131 = gets
            xemay = XeMay.new(id131, hsx131, ysx131, dsx131, gia131, bs131, ms131, congSuat131, dtbx131)
            qlpt.themMoi(phuongtien2, xemay)
        when 3
            print("Nhap ID: ")
            id131 = gets
            print("Nhap HSX: ")
            hsx131 = gets
            print("Nhap Nam SX: ")
            ysx131 = gets
            print("Nhap Dong Xe: ")
            dsx131 = gets
            print("Nhap gia ban: ")
            gia131 = gets
            print("Nhap bien so: ")
            bs131 = gets
            print("Nhap mau xe: ")
            ms131 = gets
            print("Nhap trong tai: ")
            trongtai131 = gets
            xetai = XeTai.new(id131, hsx131, ysx131, dsx131, gia131, bs131, ms131, trongtai131)
            qlpt.themMoi(phuongtien2, xetai)
        else
            print("Khong hop le")
        end
    when 2
        print("Nhap HSX hoac mau xe hoac bien so muon tim: ")
        key = gets.to_s
        qlpt.timKiem(key, phuongtien2)
    when 3 
        qlpt.hienThiDanhSach(phuongtien2)
    when 4
        print("Nhap ID can xoa: ")
        key = gets.to_s
        qlpt.xoaPhuongTien(key, phuongtien2)
    when  5
        return
    end
end