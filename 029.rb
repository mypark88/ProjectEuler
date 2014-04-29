arr = Array.new
(2..100).each do |a|
  (2..100).each do |b|
    current = a**b
    puts "Current a #{a} is and current b is #{b}"
    puts "Current size is #{arr.length} and current is #{current}"
 
    unless arr.include? current
      arr.push current
    end
  end
end 

puts "Number of things is #{arr.length}"
