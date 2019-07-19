require 'rspec'
require 'anagram'

describe('#anagram finder') do
  ripped = Word.new('ripped')
  it ('should return true if the words are anagrams') do
  expect(ripped.anagram?('dipper')).to(eq(true))
  end
  it ('should return false if the words are not anagrams') do
  expect(ripped.anagram?('horse')).to(eq(false))
  end
  it ('should return true even if the words entered are differently cased') do
  expect(ripped.anagram?('Dipper')).to(eq(true))
  end
end
