let n = readLine()!

if n.count <= 1
{
    print(0)
}else
{
    let su = Array(n).sorted(by: <)
    print(String(su))
}
