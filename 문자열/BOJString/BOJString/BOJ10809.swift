//
//  BOJ10809.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/07.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ10809 {
    func run()
    {
        let line = readLine()!.map({String($0)})
        var alp = [Int](repeating: -1, count: 26)
        
        for (i,data) in line.enumerated()
        {
            if alp[Int(UnicodeScalar(data)!.value) - 97] == -1
            {
                alp[Int(UnicodeScalar(data)!.value) - 97] = i
            }
        }
        for data in alp { print(data ,terminator: " ") }
    }
    
}
