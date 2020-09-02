//
//  BOJ2164.swift
//  BOJsimulation
//
//  Created by 이승기 on 2020/07/12.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ2164 {
    func run()
    {
        var arr = Array(Array<Int>(1...Int(readLine()!)!).reversed())
        var temp:[Int] = []
        
        while true
        {
            if arr.count >= 2
            {
                arr.removeLast()
                if arr.count == 1 && temp.isEmpty { break }
                temp.append(arr.popLast()!)
            }
            if arr.count == 0 || arr.count == 1 && !temp.isEmpty
            {
                if arr.count == 1
                {
                    arr = Array(temp.reversed()) + arr
                }else
                {
                    arr = Array(temp.reversed())
                }
                temp.removeAll()
            }
            if arr.count == 1 && temp.isEmpty { break }
        }
        
        print(arr[0])
    }
}
