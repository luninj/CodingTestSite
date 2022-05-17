import Foundation
var x = Int(readLine()!)!

var y : [Double] = []
for i in 0..<x {
    var z = readLine()!.split(separator: " ").map{Double($0)!}
    var average = 0.0
    var count = 0.0
    for j in z {
        average += j
    }
    average = (average - z[0]) / z[0]
    var stnum = z[0]
    z.remove(at: 0)
    for k in z {
        if k > average {
            count += 1.0
        }
    }
    
    var m = (count / stnum) * 100
    y.append(m)
}

for l in y {
    print(String(format: "%.3f", l) + "%")
}

