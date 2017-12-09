module MaskMan

  class Convert
    def self.rm_special string
      string.gsub(/[^0-9A-Za-z]/, '')
    end

    def self.rm_letters string
      string.gsub(/[A-Za-z]/, '')
    end

    def self.rm_numbers string
      string.gsub(/[0-9]/, '')
    end

    def self.only_letters string
      string.gsub(/[^A-Za-z]/, '')
    end

    def self.only_numbers string
      string.gsub(/[^0-9]/, '')
    end
  end

end