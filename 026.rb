require 'prime'

def findRepeating(i)
  return 0 if i == 2 or i == 5 or i == 3
  counter = 0
  repeatNotFound = true
    
  while repeatNotFound
    checker = (10 ** counter)/i
    if i < 100
      buffer = (10 ** (counter*2 - 1))/i
    else
      buffer = (10 ** (counter*2 - 2))/i
    end
    if checker < 1
      counter+=1
      next
    end
    
    repeatChecker = checker.to_s
    repeatBuffer = buffer.to_s
    
    if repeatBuffer.sub(repeatChecker, "").sub(repeatChecker, "").length == 0
      puts counter
      puts repeatChecker
      puts repeatBuffer
      puts "Length is #{repeatChecker.length}"
      puts "Answer is #{i}"
      return repeatChecker.length
    end
    counter+=1 
  end

end

greatestLength = -1
answer = -1
Prime.each(1000) do |i|
  temp = findRepeating(i)
  if temp > greatestLength
    greatestLength = temp
    answer = i
    puts "Length is #{temp}"
    puts "FINAL is #{i}"
  end
end
puts "SOLUTION is #{answer} with a length of #{greatestLength}"

