class CaesarCipher
    def translate(string,shift_int)
        alphabet = ('A'..'Z').to_a
        cypher = ""
        split_string = string.split("")
        split_string.each do |letter|
            if alphabet.include? letter.upcase
                upper_case = letter == letter.upcase
                alphabet_position = alphabet.find_index(letter.upcase)
                position_plus_shift = alphabet_position + shift_int
                replacement_letter_position = 0
                if position_plus_shift > 25
                    replacement_letter_position = position_plus_shift % 26
                else
                    replacement_letter_position = position_plus_shift
                end
                if upper_case
                    cypher+= alphabet[replacement_letter_position]
                else
                    cypher+=alphabet[replacement_letter_position].downcase
                end  
            else 
                cypher+= letter
            end
        end
        return cypher
    end
end
# CaesarCypher.
# caesar_cypher("What a string!", 5)