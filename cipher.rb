require 'pry-byebug'
def ceasar_cipher(string,shift_distance)
    message=''
    string.each_char do |string_char| #for each character in the string
        if string_char == ' ' then
            message += string_char
            next
        end
        ascii_position=string_char.ord#get the ascii position of the character
        ascii_shift=ascii_position - shift_distance
        replacement=ascii_shift.chr
        message += replacement
    end
    message
    binding.pry
end
ceasar_cipher('who is',3)