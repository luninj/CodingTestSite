var x : [Int] = []
var total = 0
for _ in 1...9 {
    var y = Int(readLine()!)!
    x.append(y)
    total += y
}

first : for i in 0...7 {
    for j in i+1...8 {
        var a = total - x[i] - x[j]
        if a == 100 {
            x.remove(at: j)
            x.remove(at: i)
            break first
        }
    }
}

x.sort()
for i in x {
    print(i)
}
