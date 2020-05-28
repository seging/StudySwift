//
//  main.swift
//  카드구매
//
//  Created by 강병우 on 2020/05/28.
//  Copyright © 2020 강병우. All rights reserved.
//
/*
최댓값이면.. dfs지
*/

import Foundation

extension Substring {
    func toInt() -> Int {
        return Int(String(self))!
    }
}

  
//while true {
let count: Int = Int(readLine()!)!
var arr: [Int] = readLine()!.split(separator: " ").map{$0.toInt()}
arr.insert(0, at: 0)
//let count = arr.count
var max = 0
var dp = Array<Int>.init(repeating: 0, count: count+1)

for i in 1 ... count {
    for j in 1 ... i {
        dp[i] = [dp[i], arr[j] + dp[i-j]].max()!
    }
}

print(dp.last!)

//}
