#!/usr/bin/ruby
  require 'pry'
  require 'ruby-dictionary'
  dictionary = Dictionary.from_file('./lib/dictionary.txt')

class AnagramFinder
  attr_accessor(:word)

  def initialize(word)
      @word = word
  end

  def anagram(other_word)
    if @word.length === other_word.length
      

    else
      "These words are not anagrams of each other"
    end
  end
end
