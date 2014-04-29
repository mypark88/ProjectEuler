coins = [200, 100, 50, 20, 10, 5, 2, 1]
fill = 200
numCombs = 0

coins.each do |c|
    k = fill/c
    while k == 0
        current = fill
        current - k*c
        numCombs += 1 if current == 0  
        k-=1
    end
end
