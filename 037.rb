require 'prime'

def truncPrime? n
    forward = n.to_s
    length = forward.length
    index = 0
    
    while index != length
        unless Prime.prime? forward[index, length].to_i
            return false
            end
        unless Prime.prime? forward[0, index+1].to_i
            return false
            end    
        index += 1
    end
    return true
end


listOfTruncPrimes = []
primes = Prime.take(100000)
i=4

while listOfTruncPrimes.length != 11 || i < 99999
    if truncPrime? primes[i]
        listOfTruncPrimes.push primes[i]
    end 
    i += 1
end

puts listOfTruncPrimes.length
puts " "
puts listOfTruncPrimes
puts " "
sum = 0
listOfTruncPrimes.each do |n|
    sum += n
end
puts sum
