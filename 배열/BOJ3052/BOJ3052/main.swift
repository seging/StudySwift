
var result = Set<Int>()
while let n = readLine()
{
    result.insert(Int(n)! % 42)
}

print(result.count)
