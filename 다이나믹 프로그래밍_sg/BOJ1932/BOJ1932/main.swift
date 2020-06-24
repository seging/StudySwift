let T = Int(readLine()!)!
var dp = [[Int]](repeating: Array(repeating: 0, count: T + 1), count: T + 1)
var arr = [[Int]](repeating: Array(repeating: 0, count: T + 1), count: T + 1)

for i in 1...T
{
    let n = readLine()
    let t = n!.split(separator: " ").map({Int($0)!})
    for j in 1...i
    {
        arr[i][j] = t[j-1]
    }
}

for i in 1...T
{
    for j in 1...i
    {
        
        dp[i][j] = arr[i][j] + max(dp[i-1][j], dp[i-1][j-1])
        
    }
}
print(dp[T].max()!)
