
def howManyTriangles a b c acc

end

greatestPossibleSolution = 0
result = 0
p = 4

while p <= 1000
    howManyTriangles p-2 1 1 0
    p += 1
end
