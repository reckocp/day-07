myArray = "Tacos must not have lettuce Only meat and cheese and salsa".split(/ /)

myArray.each do |word|
  if word.length == 5
    puts word
  end
end
