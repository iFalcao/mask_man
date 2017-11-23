module MaskMan
  class Validate

    SPECIAL_CHARS = ['*', '-', '(', ')', '/', '|', '\\', '#', '$', '%', '&', '.']

    def self.has_special_chars?(string)
      contains = false
      
      string.each_char do |char|
        if SPECIAL_CHARS.include?(char)
          contains = true 
          break
        end
      end
      
      contains
    end

    def self.only_asc?(string)
      only_asc = true

      string.each_byte do |byte|
        if byte > 127
          only_asc = false 
          break
        end
      end

      only_asc
    end

    def self.count_special_chars(string)
      count = 0
      string.each_char { |char| count += 1 if SPECIAL_CHARS.include?(char) }
      return count
    end
=begin
    TODOS:
    def only_words?
      
    end

    def only_numbers?
      
    end

    def has_numbers?
      
    end

    def has_words?
      
    end
=end
  end
end