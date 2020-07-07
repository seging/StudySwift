func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    for i in 0..<n
    {
        var temp1 = Array(String(arr1[i],radix:2))
        var temp2 = Array(String(arr2[i],radix:2))
        while temp1.count != temp2.count
        {
            if temp1.count != n
            {
                temp1.insert("0", at: 0)
            }else if temp2.count != n
            {
                temp2.insert("0", at: 0)
            }
        }
        for j in 0..<n
        {
            if temp1[j] == "0" && temp2[j] == "1"
            {
                temp1[j] = "1"
            }else if temp1[j] == "1" && temp2[j] == "0"
            {
                temp1[j] = "1"
            }
            
            if temp1[j] == "1"
            {
                temp1[j] = "#"
            }else
            {
                temp1[j] = " "
            }
        }
        answer.append(String(temp1))
    }
    return answer
}
let arr1 = [9, 20, 28, 18, 11]
let arr2 = [30, 1, 21, 17, 28]
print(solution(5, arr1, arr2))
