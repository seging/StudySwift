let n = Int(readLine()!)!
var dp = [[Int]](repeating: Array(repeating: 0, count: 3), count: 1001)
var cost = [[Int]](repeating: Array(repeating: 0, count: 3), count: n+1)
for i in 1...n
{
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    cost[i][0] = line[0]
    cost[i][1] = line[1]
    cost[i][2] = line[2]
}

for i in 1...n
{
    dp[i][0] = min(dp[i - 1][1], dp[i - 1][2]) + cost[i][0]
    dp[i][1] = min(dp[i - 1][0], dp[i - 1][2]) + cost[i][1]
    dp[i][2] = min(dp[i - 1][0], dp[i - 1][1]) + cost[i][2]
    
    
}

print(min(dp[n][0], min(dp[n][1], dp[n][2])))
