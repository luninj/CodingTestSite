let x = Int(readLine()!)!
var y = Array(readLine()!)

for i in 1..<x {
    var z = Array(readLine()!)
    for j in 0..<y.count {
        if y[j] != z[j] {
            y[j] = "?"
        }
    }
}

print(y.map{String($0)}.joined())