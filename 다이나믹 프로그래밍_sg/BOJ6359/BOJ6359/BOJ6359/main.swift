
let n = Int(readLine()!)!
for _ in 1...n
{
    let k = Int(readLine()!)!
    var dp = [Int](repeatElement(0, count: 101))
    for i in 1...k
    {
        for j in 1...k
        {
            if i * j > k
            {
                continue
            }
            if dp[i * j] == 0
            {
                dp[i * j] = 1
            }
            else
            {
                dp[i * j] = 0
            }
        }
    }
    print(dp.filter({$0 == 1}).reduce(0, +))
    
}


