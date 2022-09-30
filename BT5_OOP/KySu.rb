require_relative "CanBo"

class KySu < CanBo
    attr_accessor :nganhDaoTao

    def initialize(hoTen, tuoi, gioiTinh, diaChi, nganhDaoTao)
        super(hoTen, tuoi, gioiTinh, diaChi)
        @nganhDaoTao = nganhDaoTao
    end

    def hienThiThongTin()
        print("Ho ten: #{@hoTen} - GioiTinh: #{@gioiTinh} - Tuoi: #{@tuoi} - Dia chi: #{@diaChi} - Nganh dao tao: #{@nganhDaoTao}")
    end
end