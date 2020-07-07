//
//  BOJ1546.swift
//  BOJArray
//
//  Created by 이승기 on 2020/07/03.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ1546 {
    func run()
    {
        var arr:[Int] = []
        let T = Double(readLine()!)!
        let n = readLine()!
        var mx = 0
        var result = 0.0
        arr = n.split(separator: " ").map({Int($0)!})
        mx = arr.max()!
        result = (arr.map({(Double($0)/Double(mx))*100}).reduce(0.0, +))/T
        
        print(result)
    }
}
