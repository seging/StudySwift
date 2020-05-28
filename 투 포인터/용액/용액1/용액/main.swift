//
//  main.swift
//  용액
//
//  Created by 강병우 on 2020/05/27.
//  Copyright © 2020 강병우. All rights reserved.
//
import Foundation

extension Substring {
    func toInt() -> Int {
        return Int(String(self))!
    }
}

//let count: Int = Int(readLine()!)!
var arr: [Int] = readLine()!.split(separator: " ").map{$0.toInt()}.sorted()
print(arr)
let count = arr.count
var arrCount: Int = arr.count
var min: Int = abs(arr[0] + arr.last!)
var front: Int = 0
var end: Int = count - 1
var result: String = "\(arr.first!) \(arr.last!)"

while front < end && (front < count || 0 <= end) {
    let a = arr[front]
    let b = arr[end]
    let sum = a + b
    let absSum = abs(a + b)
    
    if absSum < min {
        min = absSum
        if a < b {
            result = "\(a) \(b)"
        } else {
            result = "\(b) \(a)"
        }
    }
    if sum < 0 {
        front += 1
    } else if sum > 0{
        end -= 1
    } else {
        result = "\(a) \(b)"
        break
    }
}

print(result)
