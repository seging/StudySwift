public func solution(_ N : Int) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    let bi = String(N, radix:2)
    let arr = Array(bi)
    var bot = arr.firstIndex(of: "1")
    var mx = 0
    for i in 1..<arr.count
    {
        if arr[i] == "1" && arr[i - 1] != "1"
        {
            if mx <= i - (bot! + 1)
            {
                mx = i - (bot! + 1)
            }
            bot = i
        }
        if arr[i] == "1" && arr[i - 1] == "1"
        {
            bot = i
        }
        
    }
    return mx
}

print(solution(15))
