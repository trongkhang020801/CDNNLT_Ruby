require_relative "CanBo"

class NhanVien < CanBo
    attr_accessor :congViec

    def initialize(hoTen, tuoi, gioiTinh, diaChi, congViec)
        super(hoTen, tuoi, gioiTinh, diaChi)
        @congViec = congViec
    end

    def hienThiThongTin()
        print("Ho ten: #{@hoTen} - GioiTinh: #{@gioiTinh} - Tuoi: #{@tuoi} - Dia chi: #{@diaChi} - Cong viec: #{@congViec}")
    end
end