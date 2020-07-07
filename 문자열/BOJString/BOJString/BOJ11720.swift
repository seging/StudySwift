//
//  BOJ11720.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/07.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ11720
{
    func run()
    {
        readLine()
        var max = 0
        let su = readLine()!.map({String($0)})
        for data in su
        {
            max += Int(data)!
        }
        print(max)
    }
}
