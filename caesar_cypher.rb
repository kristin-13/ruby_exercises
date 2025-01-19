class CaesarCypher
    def caesar_cypher(string,shift_int)
        alphabet = ('A'..'Z').to_a
        cypher = ""
        string.split().each do |letter|
            upper_case = letter == letter.upcase
            alphabet_position = alphabet.find_index(letter.upcase)
            position_plus_shift = alphabet_position + shift_int
            replacement_letter_position = position_plus_shift > 25 or position_plus_shift < 0 ? position_plus_shift % 26:position_plus_shift
            letter_to_add = upper_case ? alphabet[replacement_letter_position] : alphabet[replacement_letter_position].downcase
            cypher += letter_to_add 
        end
        return cypher
    end
end

CaesarCypher.caesar_cypher("What a string", 5)