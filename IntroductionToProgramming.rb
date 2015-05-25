#1.Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

array =  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "Exercises 1"
puts "Single Line"
array.each { |number| puts number}
#Multiline
puts "Multiline"
array.each do |number|
  puts number
end

#2. Same as above, but only print out values greater than 5

# Single line
puts "Exercises 2"
puts "Single Line"
array.each {|number| puts number if number > 5 }


# Munltiline
puts "Multiline"
array.each do |number|
  if number > 5 
    puts number
  end
end

puts "Exercises 3"
puts "Single Line"

array.select {|num| puts num if num.odd? }

puts "Multiline"

array.select do |num|
  if number = num.odd?
    puts num
  end
end

puts "Exercises 4"
puts "Append"

array.push(11)
puts array
puts "OR"
array << 11
puts array
puts "Prepend"
array.unshift(0)
puts array

puts "Exercises 5"
array.pop
puts array

puts "Append"
array << 3 
puts array
puts "OR"
array.push(3)
puts array

puts "Exercises 6"
puts "Does not change calling the object"
array.uniq
puts array
puts "Change the calling object"
array.uniq!
puts array

puts "Exercises 7"
puts "Array is list of order iteam and hash is a set key/value pairs of unorderd items"

puts "Exercises 8"

hash = { :name => 'Alina', :Masum => 29, :Raj => 27} # < old way 
hash = { name: 'Alina' , Masum: 29,} # new way 

puts "Exercises 9"
h = {a:1, b:2, c:3, d:4}
#1. Get the value of key `:b`.
h[:b]
h[:e] = 5
puts "Single verison"
h.delete_if { |x,y|  y < 3.5}
puts "Multi version"

h.delete_if do |x,y|
  y < 3.5
end

puts "Exercises 10"
arr_has = [{name: 'Alina'},{ age: 20}, {born: 1998}]
has_arr = {name: ['Alina', 'Saroar', 'Masum']}

puts "Exercises 11"


puts "Exercises 12"
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}


contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
puts contacts

puts "Exercises 13"

puts "Joe's Emails is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

puts "Exercises 14"
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :adress, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end 
puts contacts

puts "Exercises 15"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|a| puts a if a.start_with?("s")}
puts "########"
arr.delete_if {|a| puts a if a.start_with?("s","w")}
puts "########"
puts "Exercises 16"
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a = a.map {|prs| prs.split }
a = a.flatten
p a


puts "EX17"
puts "These hashes are the same!"