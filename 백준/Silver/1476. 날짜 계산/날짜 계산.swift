var esm = readLine()!.split(separator: " ").map{Int($0)!}

var e = 1
var s = 1
var m = 1
var i = 1

while true {
    if e > 15 {
        e = 1
    }
    
    if s > 28 {
        s = 1
    }
    
    if m > 19 {
        m = 1
    }
    
    if e == esm[0] && s == esm[1] && m == esm[2] {
        break
    }
    
    e += 1
    s += 1
    m += 1
    i += 1
}

print(i)
