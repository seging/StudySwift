//
//  BOJ2941.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/12.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ2941 {
    func run()
    {
        let cr:[String] = ["c=","c-","dz=","d-","lj","nj","s=","z="]
        let line = readLine()!
        var temp = ""
        var temp2 = ""
        var cnt = 0
        for s in line
        {
            temp += String(s)
            if cr.contains(temp)
            {
                temp = ""
                cnt += 1
            }else if temp.count >= 2
            {
                if temp != "dz"
                {
                    temp2 += String(temp.first!)
                    temp.removeFirst()
                    if temp.count >= 2
                    {
                        temp2 += String(temp.first!)
                        temp.removeFirst()
                    }
                }
            }
        }
        print(cnt+temp2.count+temp.count)
    }
}
