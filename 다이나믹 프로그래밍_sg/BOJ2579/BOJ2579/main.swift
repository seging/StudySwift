let T = Int(readLine()!)!
var dp = [Int](repeatElement(0, count: 305))
var F = [Int](repeatElement(0, count: 305))

for i in 1...T
{
    F[i] = Int(readLine()!)!
}
dp[1] = F[1]
dp[2] = max(dp[1] + F[2],F[2])
dp[3] = max(dp[1] + F[3], F[3] + F[2])

for i in 4...T
{
    dp[i] = max(dp[i-2] + F[i],dp[i-3] + F[i - 1] + F[i])
}

print(dp[T])
