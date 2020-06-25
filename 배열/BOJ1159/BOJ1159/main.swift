
let T = Int(readLine()!)!
var arr:[String] = []
var result:[Int] = []
for _ in 1...T
{
    let n = readLine()
    if arr.contains(String((n?.first)!))
    {
        result[arr.firstIndex(of: String((n?.first)!))!] += 1
    }else
    {
        arr.append(String((n?.first)!))
        result.append(1)
    }
}

for i in 0..<arr.count
{
    if result[i] < 5
    {
        arr[i] = " "
    }
}
let sorted = arr.filter({$0 != " "}).sorted(by: <)
if sorted.isEmpty
{
    print("PREDAJA")
}else
{
    print(sorted.joined())
}
