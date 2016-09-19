module AreAnagrams
    def self.are_anagrams?(str1, str2)
        str1.each_char do |x|
            if str2.include?(x)
                str2.slice!(x)
            else
                return false
            end
        end
        return str2.length == 0
    end
end


# one liner for this is: 
module AreAnagrams
    def self.are_anagrams?(str1, str2)
        str1.split('').sort() == str2.split("").sort()
    end
end
