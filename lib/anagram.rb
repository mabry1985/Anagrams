#!/usr/bin/ruby
  require 'pry'
  require 'ruby-dictionary'
  dictionary = Dictionary.from_file('./lib/dictionary.txt')

class Word
  attr_accessor(:word, :anagram)

  def initialize(word)
      @word = word
      @anagram = true
  end

  def anagram?(other_word)
    word_array = @word.split('')
    other_word_array = other_word.split('')
    if @word.length === other_word.length
      x = 0
      while (x < word_array.length)
        other_word_array.delete_if do |letter|
          if ((word_array[x] === letter) & (other_word_array.length > 0))
            @anagram = true
            x += 1
          elsif ((word_array[x] != letter))
            @anagram = false
          else
            x += 1
          end
        end
      end
    else
      @anagram = false
    end
    @anagram
  end


end

# puts "Enter two words to see if they are anagrams"
# puts "Enter first word"
# first_word = gets.chomp
# puts "Enter second word"
# second_word = gets.chomp
# word_object = Word.new(first_word)
# word_object.anagram?(second_word)
