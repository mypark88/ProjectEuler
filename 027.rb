require 'prime'
max_primes = 0
max_a = 0
max_b = 0

def find_max_quad(b, a)
    current = 0
    while Prime.prime?(current**2 + a*current + b) 
        current+=1
    end

    return current
end


(0..1000).each do |a|
    (0..1000).each do |b|
        current1 = find_max_quad(a, b)
        current2 = find_max_quad(a*-1, b)
        current3 = find_max_quad(a, b*-1)
        current4 = find_max_quad(a*-1, b*-1)
        if max_primes < [current1, current2, current3, current4].max
            max_primes = [current1, current2, current3, current4].max
            max_a = a
            max_b = b
        end
    end
end

puts "The maximum primes is #{max_primes}"
puts "With a being #{max_a}, b being #{max_b}"
puts "Final answer is #{max_a*max_b}"
