//
//  main.swift
//  BOJ5397
//
//  Created by 이승기 on 2020/06/25.
//  Copyright © 2020 이승기. All rights reserved.
//
let nline = Int(readLine()!)!
var count = 0

for _ in 0..<nline
{
    let mline = readLine()!
    let mlinearr = Array(mline)

    var leftstack:[String] = []
    var rightstack:[String] = []
    for data in mlinearr
    {
        if(data == "-")
        {
            if(leftstack.count != 0)
            {
                leftstack.removeLast()
            }
        }
        else if(data == "<")
        {
         if(leftstack.count != 0)
            {
                rightstack.append(leftstack.popLast()!)
            }
        }else if(data == ">")
        {
            if(rightstack.count != 0)
            {
                leftstack.append(rightstack.last!)
                rightstack.removeLast()
            }
            
        }else
        {
            leftstack.append(String(data))
        }
    }
    print(leftstack.joined() + rightstack.reversed().joined())
}
