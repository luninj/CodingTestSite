var x = Int(readLine()!)!
var y = readLine()!.split(separator: " ")
var z = 0.0
var max = 0.0
for i in y {
    if max < Double(i)! {
        max = Double(i)!
    }
    z += Double(i)!
}
z = (z/max/Double(x))*100
print(z)
