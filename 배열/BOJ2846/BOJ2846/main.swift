let T = Int(readLine()!)!
var Top = 0
var bot = 0
var mx = 0
var n = readLine()!.split(separator: " ").map({Int($0)!})
bot = n[0]
Top = n[T-1]
for i in 0..<T-1
{
    if n[i] - n[i+1] < 0
    {
        Top = n[i+1]
    }else
    {
        bot = n[i+1]
        continue
    }
    if mx < Top - bot
    {
        mx = Top - bot
    }
}
print(mx)

