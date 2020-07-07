//
//  BOJ2562.swift
//  BOJArray
//
//  Created by 이승기 on 2020/07/01.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ2562 {
        
    func run()
    {
        var max = 0
        var inx = 0
        var saveinx = 0
        while let n = readLine()
        {
            inx += 1
            if max < Int(n)!
            {
                max = Int(n)!
                saveinx = inx
            }
        }
        print("\(max)\n\(saveinx)")
    }

}

