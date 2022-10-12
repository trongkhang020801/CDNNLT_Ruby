class Town
    attr_accessor :families

    def initialize(families)
        @families = families
    end

    def addFamily(family)
        @families.push(family)
    end

    def showInfor()
        for family in families do
            family.showInfor
        end
    end
end