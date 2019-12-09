require 'pry'

class PigLatinizer

    def piglatinize_word(word)
        # binding.pry
        first_vowel_index = word.index(word.scan(/[aeiouAEIOU]/)[0])
        first_part = word[0...first_vowel_index]
        vowel_start = first_vowel_index == 0
        join = vowel_start ? 'w' : first_part
        last_chunk = word[first_vowel_index..-1]
        "#{last_chunk}#{join}ay"
    end

    def piglatinize(phrase)
        words = phrase.split(" ")
        new_words = words.map {|w| self.piglatinize_word(w)}
        final_string = ""
        new_words.each_with_index {|new_word, index| final_string += new_word + ((index == words.length-1) ? '' : " ")}
        final_string
    end
end