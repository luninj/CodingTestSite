var x = Int(readLine()!)!
var y : [Int] = []
for _ in 0..<x {
    y.append(Int(readLine()!)!)
}
var z = Set(y)
var w = z.sorted()
for i in w {
    print(i)
}
