class QLPT 
    def initialize

    end
    def themMoi(phuongTien2, phuongTien) 
        phuongTien2.push(phuongTien)
    end 

    def timKiem(key, phuongTien2)
        puts("Danh sach tim kiem: ")
        for phuongTien in phuongTien2 do
            if phuongTien.hoTen.include? key
                phuongTien.hienThiThongTin
            end
        end 
    end

    def hienThiDanhSach(phuongTien2)
        for phuongTien in phuongTien2 do
            phuongTien.hienThiThongTin
        end
    end

    def xoaPhuongTien(key, phuongTien2)
        for phuongTien in phuongTien2 do
            if phuongTien.id131.include? key
                phuongTien.delete(key)
            end
        end
        phuongTien.hienThiThongTin
    end
end