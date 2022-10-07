require_relative "PhuongTien"
class XeTai < PhuongTien
    attr_accessor :trongtai13
    def initialize(id131, hsx131, ysx131, dx131,gia131, bs131, ms131, trongtai131)
        super(id131, hsx131, ysx131, dx131,gia131, bs131, ms131)
        @trongtai131 = trongtai131
    end
    def hienThiThongTin()
        print("ID: #{@id131} - Hang San Xuat: #{@HSX131} - Nam San Xuat: #{@YSX131} - Dong Xe: #{@DX131} - Bien So: #{@BS131} - Mau xe: #{@MS131}  - Trong tai: #{@trongtai131}")
    end
end