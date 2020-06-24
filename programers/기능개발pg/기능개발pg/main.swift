//
//  main.swift
//  기능개발pg
//
//  Created by 이승기 on 2020/06/24.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result:[Int] = []
    var temp = Array(progresses.reversed())
    var speedst = Array(speeds.reversed())
    
    while !(temp.isEmpty)
    {
        var n = 0
        for (i,data) in temp.enumerated()
        {
            temp[i] = data + speedst[i]
            if temp[i] > 99 && temp[i] == temp.last
            {
                n += 1
                temp.removeLast()
                speedst.removeLast()
            }
        }
        for _ in 0..<temp.count
        {
            if temp.last! > 99
            {
                n += 1
                temp.removeLast()
                speedst.removeLast()
                
            }
        }
        if n != 0
        {
            result.append(n)
        }
    }
    return result
}
var p = [93,30,55]
var s = [1,30,5]
print(solution(p, s))
