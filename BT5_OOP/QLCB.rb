class QLCB 
    def initialize

    end
    def themMoi(canBos, canBo) 
        canBos.push(canBo)
    end 

    def timKiem(key, canBos)
        puts("Danh sach tim kiem: ")
        for canBo in canBos do
            if canBo.hoTen.include? key
                canBo.hienThiThongTin
            end
        end 
    end

    def hienThiDanhSach(canBos)
        for canBo in canBos do
            canBo.hienThiThongTin
        end
    end
end