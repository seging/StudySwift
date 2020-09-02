//
//  BOJ1316.swift
//  BOJString
//
//  Created by 이승기 on 2020/07/13.
//  Copyright © 2020 이승기. All rights reserved.
//

import Foundation

class BOJ1316
{
    func run()
    {
        let T = Int(readLine()!)!
        var cnt = 0
        for _ in 0..<T
        {
            let line = readLine()!.map({String($0)})
            var temp:[String] = [line[0]]
            if line.count > 1
            {
                for i in 1..<line.count
                {
                    if line[i] != line[i-1]
                    {
                        if temp.contains(line[i])
                        {
                            cnt -= 1
                            break
                        }else
                        {
                            temp.append(line[i])
                            continue
                        }
                    }
                    
                }
            }
            cnt += 1
        }
        print(cnt)
    }
}
