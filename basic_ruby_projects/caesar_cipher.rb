def caesar_cipher(input, shift_factor)
    input_array = input.split('')
    result_array = Array.new
    input_array.each do |letter|
        ordinal = 0
        if letter == letter.upcase
            ordinal = upcase_shift(letter.ord, shift_factor)
        else
            ordinal = downcase_shift(letter.ord, shift_factor)
        end
        result_array.push(ordinal.chr)
    end
    return result_array.join('')
end

def upcase_shift(ordinal, shift_factor)
    if ordinal.between?(65, 90)
        ordinal += shift_factor
        if ordinal > 90
            ordinal -= 26
        end
    end
    return ordinal
end

def downcase_shift(ordinal, shift_factor)
    if ordinal.between?(97, 122)
        ordinal += shift_factor
        if ordinal > 122
            ordinal -= 26
        end
    end
    return ordinal
end

puts caesar_cipher('What a string!', 5)
puts caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 23)
puts caesar_cipher('ATTACKATONCE', 4)