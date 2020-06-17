let T = Int(readLine()!)!
var dp = [Int](repeating: 0, count: 101)
dp[1] = 1
dp[2] = 1
dp[3] = 1

for i in 4...100
{
    dp[i] = dp[i-3] + dp[i-2]
}

for _ in 0..<T
{
    let n = Int(readLine()!)!
    print(dp[n])
}

