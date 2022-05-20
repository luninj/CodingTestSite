var x = Int(readLine()!)!

var y : String = ""
for _ in 0..<x {
    var z = readLine()!.split(separator: " ")
    var w : String = ""
    for i in z {
        for j in i.reversed() {
            w += String(j)
        }
        w += " "
    }
    y += w + "\n"
}
print(y)
