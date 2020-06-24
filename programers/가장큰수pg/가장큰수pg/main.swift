//
//  main.swift
//  가장큰수pg
//
//  Created by 이승기 on 2020/06/24.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    let sorted:[Int] = numbers.sorted{Int("\($0)\($1)")! > Int("\($1)\($0)")! }
    if sorted[0] == 0
    {
        return "0"
    }
    return sorted.reduce(""){ $0 + "\($1)"}
}
let n = [6, 10, 2]
print(solution(n))
