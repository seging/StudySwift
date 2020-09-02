//
//  Vertex.swift
//  
//
//  Created by 이승기 on 2020/07/13.
//

import Foundation

public struct Vertex<T: Equatable & Hashable>:Equatable
{
    public var data:T
    public let index:Int
}
public func == <T: Equatable> (lhs: Vertex<T>, rhs: Vertex<T>) -> Bool
{
    guard lhs.data == rhs.data else {
        return false
    }
    return true
}

extension Vertex: Hashable
{
    public var hashValue:Int
    {
        get
        {
            return "\(index)".hashValue
        }
    }
}
