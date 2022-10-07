require_relative "PhuongTien"
class XeMay < PhuongTien
    attr_accessor :congSuat131
    attr_accessor :dtbx131
    def initialize(id131, hsx131, ysx131, dx131,gia131, bs131, ms131, congSuat131, dtbx131)
        super(id131, hsx131, ysx131, dx131,gia131, bs131, ms131)
        @congSuat131 = congSuat131
        @dtbx131 =  dtbx131
    end
    def hienThiThongTin()
        print("ID: #{@id131} - Hang San Xuat: #{@HSX131} - Nam San Xuat: #{@YSX131} - Dong Xe: #{@DX131} - Bien So: #{@BS131} - Mau xe: #{@MS131}  - Cong xuar: #{@congSuat131} - Dung tich binh xang: #{@dtbx131}")
    end
end