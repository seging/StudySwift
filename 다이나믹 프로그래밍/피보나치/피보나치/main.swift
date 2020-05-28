//
//  main.swift
//  피보나치
//
//  Created by 강병우 on 2020/05/29.
//  Copyright © 2020 강병우. All rights reserved.
//

import Foundation

func solution(n: Int) -> [Int] {
    var dp: [[Int]] = Array(repeating: [0,0], count: n + 1)
    if n == 0 {
        return [1,0]
    } else if n == 1 {
        return [0,1]
    } else {
        dp[0] = [1,0]
        dp[1] = [0,1]
        for i in 2 ... n {
            dp[i] = [dp[i-1].first! + dp[i-2].first!, dp[i-1].last! + dp[i-2].last!]
        }
    }
    return dp[n]
}

let count: Int = Int(readLine()!)!

for _ in 0 ..< count {
    let input: Int = Int(readLine()!)!
    let arr: [Int] = solution(n: input)
    print("\(arr[0]) \(arr.last!)")
}

