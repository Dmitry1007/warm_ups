def word_rotation?(word_1, word_2)
  if word_1.length == word_2.length
    (word_1 * 2).include?(word_2)
  else
    return false
  end
end

# True
puts word_rotation?("apple", "pplea")
puts word_rotation?("apple", "pleap")
puts word_rotation?("apple", "leapp")
puts word_rotation?("apple", "eappl")
puts word_rotation?("apple", "apple")


# False
puts word_rotation?("apple", "aplep")
puts word_rotation?("apple", "appel")
puts word_rotation?("apple", "leppa")

puts word_rotation?("apple", "ppl")
