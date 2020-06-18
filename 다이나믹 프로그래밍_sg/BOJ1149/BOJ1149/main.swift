readLine()
var a=[0,0,0]
while let l=readLine(){
    var t=a
    let b=l.split{$0==" "}.map{Int($0)!}
    for (i,e) in b.enumerated(){
        var c=[Int]()
        for (j,f) in a.enumerated(){
            if i==j{continue}
            c.append(f)
        }
        t[i]=min(c[0], c[1])+e
    }
    a=t
}
print(a.min()!)
