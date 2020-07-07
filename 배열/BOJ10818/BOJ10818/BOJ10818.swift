//
//  BOJ10818.swift
//  BOJ10818
//
//  Created by 이승기 on 2020/07/01.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ10818 {
    let T = Int(readLine()!)!
    let temp = readLine()!.split(separator: " ").map({Int($0)!})
    
    var max = temp[0]
    var min = temp[0]
    
    for i in 1..<T
    {
        if temp[i] < min
        {
            min = temp[i]
        }
        if temp[i] > max
        {
            max = temp[i]
        }
    }

    print(min, max)

}
