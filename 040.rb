test = ""
current = 0
while test.length < 1000001
    test << current.to_s
    current += 1
end
puts test[1]
puts test[10]
puts test[100]
puts test[1000]
puts test[10000]
puts test[100000]
puts test[1000000]
puts "Answer: #{test[1].to_i * test[10].to_i * test[100].to_i * test[1000].to_i * test[10000].to_i * test[100000].to_i * test[1000000].to_i}"



