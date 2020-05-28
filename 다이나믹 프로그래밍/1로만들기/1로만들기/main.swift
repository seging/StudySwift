//
//  main.swift
//  1로만들기
//
//  Created by 강병우 on 2020/05/28.
//  Copyright © 2020 강병우. All rights reserved.
//

import Foundation
//while true{
let n: Int = Int(readLine()!)!
    if n < 2 { print(0)} else {
var dp: [Int] = Array(repeating: -1, count: n + 1)
    dp[1] = 0
for i in 2 ... n {
    dp[i] = dp[i-1] + 1
    if i % 3 == 0 {
        dp[i] = [dp[i], dp[i/3]+1].min()!
    }
    if i % 2 == 0 {
        dp[i] = [dp[i], dp[i/2]+1].min()!
    }
}

print(dp[n])
//}
}
