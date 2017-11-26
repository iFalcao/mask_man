module MaskMan
  class Convert
    def self.rm_special string
      return string == nil ? '' : string.gsub(/[^0-9A-Za-z]/, '')
    end

    def self.rm_letters string
      return string == nil ? '' : string.gsub(/[A-Za-z]/, '')
    end

    def self.rm_numbers string
      return string == nil ? '' : string.gsub(/[0-9]/, '')
    end

    def self.only_letters string
      return string == nil ? '' : string.gsub(/[^A-Za-z]/, '')
    end

    def self.only_numbers string
      return string == nil ? '' : string.gsub(/[^0-9]/, '')
    end
  end
end