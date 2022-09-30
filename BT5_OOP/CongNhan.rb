require_relative "CanBo"

class CongNhan < CanBo
    attr_accessor :bac

    def initialize(hoTen, tuoi, gioiTinh, diaChi, bac)
        super(hoTen, tuoi, gioiTinh, diaChi)
        @bac = bac
    end

    def hienThiThongTin()
        print("Ho ten: #{@hoTen} - GioiTinh: #{@gioiTinh} - Tuoi: #{@tuoi} - Dia chi: #{@diaChi} - Bac: #{@bac}")
    end
end