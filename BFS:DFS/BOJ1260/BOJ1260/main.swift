let T = readLine()!.split(separator: " ").map({Int($0)!})

struct arr {
    let from:Int
    let to:Int
}
var temp:[arr] = []
var vertex = Set<Int>()
var top = T[2]
var stack:[Int] = []
var DFS:[Int] = [T[2]]
var BFS:[Int] = [T[2]]
for _ in 0..<T[1]
{
    let n = readLine()!.split(separator: " ").map({Int($0)!})
    temp.append(arr(from: n[0], to: n[1]))
    vertex.insert(n[0])
    vertex.insert(n[1])
}
temp = temp.sorted(by: {$0.to > $1.to})
while DFS.count != vertex.count
{
    if DFS.count != vertex.count
    {
        if temp.contains(where: {$0.from == top })
        {
            for data in temp
            {
                if data.from == top
                {
                    stack.append(data.to)
                }
            }
        }else if temp.contains(where: {$0.to == top})
        {
            for data in temp
            {
                if data.to == top
                {
                    stack.append(data.from)
                }
            }
        }
        temp = temp.filter({$0.from != top && $0.to != top})
        if stack.isEmpty
        {
            break
        }
        top = stack.popLast()!
        if !DFS.contains(where: {$0 == top})
        {
            DFS.append(top)
        }
        if !temp.contains(where: {$0.from == top || $0.to == top}) && !temp.isEmpty
        {
            top = stack.popLast()!
            DFS.append(top)
        }
    }
    
    if BFS.count != vertex.count
    {
        if temp.contains(where: {$0.from == top })
        {
            for data in temp
            {
                if data.from == top
                {
                    stack.append(data.to)
                }
            }
        }else if temp.contains(where: {$0.to == top})
        {
            for data in temp
            {
                if data.to == top
                {
                    stack.append(data.from)
                }
            }
        }
        temp = temp.filter({$0.from != top && $0.to != top})
        if !stack.isEmpty
        {
            for _ in stack.reversed()
            {
                top = stack.popLast()!
                BFS.append(top)
            }
        }
    }
}
print(DFS,terminator:" ")


