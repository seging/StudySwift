//
//  main.swift
//  BOJ2953
//
//  Created by 이승기 on 2020/06/25.
//  Copyright © 2020 이승기. All rights reserved.
//
var index = 0
var max = [Int](repeating: 0, count: 2)
while let n = readLine()
{
    let result = n.split(separator: " ").map{Int($0)!}.reduce(0,+)
    index += 1
    if max[1] < result
    {
        max[0] = index
        max[1] = result
    }
}
print("\(max[0]) \(max[1])")
