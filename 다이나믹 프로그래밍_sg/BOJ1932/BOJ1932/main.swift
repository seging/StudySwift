let T = Int(readLine()!)!
var dp = [[Int]](repeating: Array(repeating: 0, count: 0), count: T + 1)
var cnt = 1
for _ in 0..<T
{
    let n = readLine()
    let t = n!.split(separator: " ").map({Int($0)!})
    if t.count > 2
    {
        for i in 0..<t.count-1
        {
            dp[cnt].append(t[i] + dp[cnt - 1][i])
            dp[cnt].append(t[i + 1] + dp[cnt - 1][i])


        }
    }
    else if t.count == 1
    {
        dp[cnt].append(t[0])
    }
    else if t.count == 2
    {
        dp[cnt].append(dp[cnt - 1][0] + t[0])
        dp[cnt].append(dp[cnt - 1][0] + t[1])
    }
    cnt += 1
}
print(dp[T].max()!)
