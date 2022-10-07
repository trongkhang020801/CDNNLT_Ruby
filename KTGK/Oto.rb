require_relative "PhuongTien"
class Oto < PhuongTien
    attr_accessor :socho131
    attr_accessor :kieuDC131
    attr_accessor :nhienlieu13
    attr_accessor :tuikhi131
    attr_accessor :ngayDK131
    def initialize(id131, hsx131, ysx131, dx131,gia131, bs131, ms131, socho131, kieuDC131, nhienlieu131, tuikhi131, ngayDK131)
        super(id131, hsx131, ysx131, dx131,gia131, bs131, ms131)
        @socho131 = socho131
        @kieuDC131 =  kieuDC131
        @nhienlieu131 = nhienlieu131
        @tuikhi131 = tuikhi131
        @ngayDK131 = ngayDK131
    end
    def hienThiThongTin()
        print("ID: #{@id131} - Hang San Xuat: #{@HSX131} - Nam San Xuat: #{@YSX131} - Dong Xe: #{@DX131} - Bien So: #{@BS131} - Mau xe: #{@MS131}
          - So cho: #{@socho131} - kieu dong co: #{@kieuDC131} - Nhien Lieu: #{@nhienlieu13} - Tui Khi: #{@tuikhi131} - Ngay Dang Kiem: #{@ngayDK131}")
    end
end