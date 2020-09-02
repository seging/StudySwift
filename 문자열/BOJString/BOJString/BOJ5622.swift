//
//  BOJ5622.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/09.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ5622
{
    func run()
    {
        let alp:[String:Int] = ["A":2,"B":2,"C":2,"D":3,"E":3,"F":3,"G":4,"H":4,"I":4,"J":5,"K":5,"L":5,"M":6,"N":6,"O":6,"P":7,"Q":7,"R":7,"S":7,"T":8,"U":8,"V":8,"W":9,"X":9,"Y":9,"Z":9]
        var sum = 0
        let line = readLine()!.map({String($0)})
        
        for s in line
        {
            if let val = alp[s]
            {
                sum += val
            }
        }
        print(sum + line.count)
    }
}
