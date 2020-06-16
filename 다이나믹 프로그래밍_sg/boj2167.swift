//
//  main.swift
//  back2167
//
//  Created by 이승기 on 2020/06/15.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

let NM = readLine()!.split(separator: " ").map({Int($0)!})
var dp = [[Int]](repeatElement(Array(repeatElement(0, count: 300)), count:300))

for i in 1...NM[0]
{
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    for j in 1...NM[1]
    {
        dp[i][j] = dp[i-1][j] + dp[i][j-1] - dp[i-1][j-1] + line[j-1]
    }
}

let k = Int(readLine()!)!

for _ in 0..<k
{
    let line = readLine()!.split(separator: " ").map({Int($0)!})
    let sum = dp[line[2]][line[3]] - dp[line[2]][line[1]-1] - dp[line[0]-1][line[3]] + dp[line[0] - 1][line[1] - 1]
    
    print(sum)
}
