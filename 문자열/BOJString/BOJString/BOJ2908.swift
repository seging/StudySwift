//
//  BOJ2908.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/08.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ2908
{
    func run()
    {
        let line = readLine()!.components(separatedBy: " ")
        let A = String(line[0].reversed())
        let B = String(line[1].reversed())
        print(max(Int(A)!, Int(B)!))
        
    }
}
