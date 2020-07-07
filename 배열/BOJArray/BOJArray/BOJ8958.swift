//
//  BOJ8958.swift
//  BOJArray
//
//  Created by 이승기 on 2020/07/03.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ8958 {
    func run()
    {
        let T = Int(readLine()!)!
        var arr:[String] = []
        
        for _ in 0..<T
        {
            arr = readLine()!.map({String($0)})
            var cnt = 0
            var sum = 0
            if arr[0] == "O"
            {
                cnt = 1
                sum = 1
                for j in 0..<arr.count-1
                {
                    if arr[0] != arr[j+1]
                    {
                        cnt = 0
                    }else
                    {
                        cnt += 1
                        sum += cnt
                    }
                }
            }else if arr[0] == "X"
            {
                cnt = 0
                for j in 0..<arr.count-1
                {
                    if arr[0] != arr[j+1]
                    {
                        cnt += 1
                        sum += cnt
                    }else
                    {
                        cnt = 0
                    }
                }
            }
            print(sum)
            
        }
    }
}
