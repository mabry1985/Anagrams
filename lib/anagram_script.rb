require 'colorize'
require './lib/anagram'

system "cls"
puts "Hello, human."
sleep(1)
puts "Wanna play a game?"
sleep(1)
puts "Type yes or no".colorize(:color => :black, :background => :white)
answer = gets.chomp.downcase
sleep(1)
if answer === "no"
  puts "Oh? I thought your kind liked games."
  sleep(2)
  puts "Well you know where to find me if you change your mind."
  sleep(2)
  exit
end

puts "Oh, joy! I do love a good game."
sleep(1)
puts "An anagram is when a word is rearranged and it spells another word."

sleep(2)
puts "Enter two words and I'll tell you if they are indeed an anagram."
sleep(2)

while true do
  puts "Enter your first word".colorize(:color => :black, :background => :white)
  word_one = gets.chomp
  puts "Enter your second word".colorize(:color => :black, :background => :white)
  word_two = gets.chomp

  word = Word.new(word_one)

  answer = word.anagram?(word_two)

  if answer === true
    puts "Your words are anagrams"
    sleep(2)
  else
    puts "I'm sorry, your words are not anagrams"
    sleep(1)
    puts "Try again"
    sleep(2)
  end
  puts "Would you like to play again?"
  puts "type yes or no".colorize(:color => :black, :background => :white)
  answer = gets.chomp.downcase
  if answer === "no"
    puts "Thanks for playing."
    exit
  end
  sleep(2)
end
