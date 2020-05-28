//
//  main.swift
//  1,2,3더하기
//
//  Created by 강병우 on 2020/05/28.
//  Copyright © 2020 강병우. All rights reserved.
//

import Foundation

func solution(n: Int) -> Int {
    var dp: [Int] = Array(repeating: 0, count: n + 1)
    if n < 4 {
        return n == 3 ? 4 : n
    } else {
        dp[1] = 1
        dp[2] = 2
        dp[3] = 4
        for i in 4 ... n {
            dp[i] = dp[i-1] + dp[i-2] + dp[i-3]
        }
    }
    
    return dp[n]
}

let count: Int = Int(readLine()!)!

for _ in 0 ..< count {
    let input: Int = Int(readLine()!)!
    print(solution(n: input))
}
