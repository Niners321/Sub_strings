dictionary = ["below","down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
  string = string.downcase
  hash = Hash.new
  dictionary.each do |word|
    hash[word] = string.scan(word).uniq if string.include?(word)
  end
  hash
end  

puts (substrings('below', dictionary))
puts (substrings("Howdy partner, sit down! How's it going?", dictionary))