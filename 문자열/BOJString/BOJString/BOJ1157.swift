//
//  BOJ1157.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/07.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ1157 {
    func run()
    {
        let line = readLine()!.map{String($0)}
        var alp = [Int](repeating: 0, count: 26)
        var temp = 0
        var mx = 0
        for data in line
        {
            if Int(UnicodeScalar(String(data))!.value) > 96
            {
                alp[Int(UnicodeScalar(String(data))!.value) - 97] += 1
            }else
            {
                alp[Int(UnicodeScalar(String(data))!.value) - 65] += 1
            }
        }
        temp = alp.firstIndex(of: alp.max()!)!
        mx = alp.max()!
        alp.remove(at: temp)
        if alp.contains(mx) { print("?") }
        else { print(String( UnicodeScalar(temp+65)!)) }
    }
}
