module MaskMan
  class Convert
    def self.rm_special(string)
      return string.gsub(/[^0-9A-Za-z]/, '')
    end
  end
end