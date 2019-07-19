require 'rspec'
require 'anagram'

describe('#anagram/antigram finder') do
  ripped = Word.new('ripped')
  # it ('should return true if the words are anagrams') do
  # expect(ripped.anagram?('dipper')).to(eq(true))
  # end
  #
  # it ('should return false if the words are not anagrams') do
  # expect(ripped.anagram?('horse')).to(eq(false))
  # end
  #
  # it ('should return true even if the words entered are differently cased') do
  # expect(ripped.anagram?('Dipper')).to(eq(true))
  # end
  #
  # it ('should return an error if the word does not exist') do
  # expect(ripped.is_it_a_word?('ripped', 'dioppeee')).to(eq("According to my research one of these is not a real word, if you think you've recieved this error for a real word email mabry1985@gmail.com"))
  # end
  #
  # it ('should return true if the word is an antigram') do
  # expect(ripped.antigram?('sock')).to(eq(true))
  # end
  #
  # it ('should return false if the word is not an antigram') do
  # expect(ripped.antigram?('dip')).to(eq(false))
  # end
  #
  # it ('should return false if the word is not an antigram') do
  # expect(ripped.antigram?('i')).to(eq(false))
  # end

  it ('should return true if multiple words entered are anagrams') do
    phrase = Word.new('Astronomer')
  expect(phrase.anagram?('Moon starer')).to(eq(true))
  end

  it ('should return true if multiple words entered are anagrams') do
    phrase = Word.new('Clint Eastwood')
  expect(phrase.anagram?('Old West Action')).to(eq(true))
  end

  it ('should return true if multiple words entered are anagrams') do
    phrase = Word.new('Astronomer')
  expect(phrase.antigram?('Dip flip hip')).to(eq(true))
  end

  it ('should return true if multiple words entered are anagrams') do
    phrase = Word.new('Astronomer')
  expect(phrase.antigram?('Dip flip hip stop')).to(eq(false))
  end
end
