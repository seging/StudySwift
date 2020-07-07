//
//  BOJ4344.swift
//  BOJArray
//
//  Created by 이승기 on 2020/07/03.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ4344 {
    func run()
    {
        let T = Int(readLine()!)!
        
        for _ in 0..<T
        {
            let arr = readLine()!.split(separator: " ").map({Int($0)!})
            let aver = Double(Array(arr[1...]).reduce(0, +)) / Double(arr[0])
            let temp = Array(arr[1...]).filter({Double($0) > aver})
            let result = String(format: "%.3f%%", round( Double(temp.count)/Double(arr.count-1)*100000)/1000)
            print(result)
        }
    }
}
