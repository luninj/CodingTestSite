var N = Int(readLine()!)!

var Intarr : [Int] = []
var total : [Int] = []

for _ in 0..<N {
    Intarr.append(Int(readLine()!)!)
}

Intarr.sort()

for i in 0..<N {
    total.append(Intarr[i] * Intarr[i...Intarr.count-1].count)
}

print(total.max()!)
