#!/usr/bin/ruby
  require 'pry'
  require 'ruby-dictionary'

class Word
  attr_accessor(:word, :anagram)

  def initialize(word)
      @word = word
      @anagram = true
      @antigram = true
      @dictionary = Dictionary.from_file('./lib/dictionary.txt')
  end

  def is_it_a_word?(word, other_word)
      word_exists = @dictionary.exists?(word)
      other_word_exists = @dictionary.exists?(other_word)
      if ((word_exists === true) & (other_word_exists === true))
      else
      puts error_message = "According to my research one of these is not a real word, if you think you've recieved this error for a real word email mabry1985@gmail.com"
      error_message
      end
  end

  def anagram?(other_word)
    word_array = @word.downcase.gsub(/[\s+“”’.…!,?'"$-=()#]/, '').split('')
    other_word_array = other_word.downcase.gsub(/[\s+“”’.…!,?'"$-=()#]/, '').split('')
    if word_array.length === other_word_array.length
      x = 0
      while (x < word_array.length)
        other_word_array.delete_if do |letter|
          binding.pry
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

  def antigram?(other_word)
    word_array = @word.downcase.gsub(/[\s+“”’.…!,?'"$-=()#]/, '').split('')
    other_word_array = other_word.downcase.gsub(/[\s+“”’.…!,?'"$-=()#]/, '').split('')
    # binding.pry
    x = 0
    if word_array.length >= other_word_array.length
      while (x < word_array.length)
        word_array.each do |letter|
          binding.pry
          if ((other_word_array[x] != letter) & (@antigram === true))
            @antigram = true
            x += 1
          elsif ((other_word_array[x] === letter))
            @antigram = false
            return @antigram
          end
        end
      end
    elsif word_array.length < other_word_array.length
      while (x < other_word_array.length)
        other_word_array.each do |letter|
          if ((word_array[x] != letter) & (@antigram === true))
            binding.pry
            @antigram = true
            x += 1
          elsif ((word_array[x] === letter))
            @antigram = false
            return @antigram
          end
        end
      end
    end
    @antigram
  end


end

# puts "Enter two words to see if they are anagrams"
# puts "Enter first word"
# first_word = gets.chomp
# puts "Enter second word"
# second_word = gets.chomp
# word_object = Word.new(first_word)
# word_object.anagram?(second_word)
