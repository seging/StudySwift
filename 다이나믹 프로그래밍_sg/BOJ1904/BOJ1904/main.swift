let n = Int(readLine()!)!
var dp = [Int](repeating: 0, count: 1000001)
dp[1] = 1
dp[2] = 2
if n > 2
{
    for i in 3...n
    {
        dp[i] = (dp[i-1] + dp[i-2]) % 15746
    }
}
print(dp[n])
