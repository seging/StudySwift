//
//  BOJ2577.swift
//  BOJArray
//
//  Created by 이승기 on 2020/07/03.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ2577 {
    
    func run()
    {
        var su = 1
        var result:[String] = []
        var arr = [String](repeating: "0", count: 10)
        for _ in 1...3
        {
            su = su * Int(readLine()!)!
        }
        result = String(su).map({String($0)})
        
        for (_,data) in result.enumerated()
        {
            arr[Int(data)!] = String("\(Int(arr[Int(data)!])! + 1)")
        }
        
        for (_,data) in arr.enumerated()
        {
            print(data)
        }
    }
}
