
let n = Int(readLine()!)!

var dp = [Int](repeatElement(0, count: 91))
dp[1] = 1
if n != 1
{
    for i in 2...n
    {
        dp[i] = dp[i-1] + dp[i-2]
    }
}
print(dp[n])
