class CanBo
    attr_accessor :hoTen
    attr_accessor :tuoi
    attr_accessor :gioiTinh
    attr_accessor :diaChi

    def initialize(hoTen, tuoi, gioiTinh, diaChi)
        @hoTen = hoTen
        @tuoi = tuoi
        @gioiTinh = gioiTinh
        @diaChi = diaChi
    end
end