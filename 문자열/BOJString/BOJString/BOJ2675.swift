//
//  BOJ2675.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/07.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ2675
{
    func run()
    {
        let T = Int(readLine()!)!
        for _ in 0..<T
        {
            let arr = readLine()!.split(separator: " ")
            let S = arr[1].map({String($0)})
            var result = [String](repeating: "", count: S.count)
            for (i,data) in S.enumerated()
            {
                for _ in 0..<Int(arr[0])!
                {
                    result[i] += data
                }
            }
            print(result.joined())
        }
    }
}
