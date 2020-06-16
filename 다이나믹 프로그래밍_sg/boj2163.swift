let line = readLine()!
let linearr = line.split(separator: " ").map({Int($0)!})
var size = linearr[0] * linearr[1]

print(linearr[0] * linearr[1] - 1)
