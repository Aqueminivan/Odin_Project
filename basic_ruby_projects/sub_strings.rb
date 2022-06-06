def substrings(words, valid_substrings)
    result = Hash.new(0)
    valid_substrings.each do |word|
        upcase_words = words.upcase.split(' ')
        upcase_words.each do |upcase_word| 
            if upcase_word.include?(word.upcase)
                result[word.downcase] += 1
            end
        end
    end
    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)