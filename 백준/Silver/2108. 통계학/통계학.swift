import Foundation

var N = Int(readLine()!)!

var Narray : [Int] = []
var total = 0.0
var dict : [Int : Int] = [:]

for _ in 0..<N {
    let temp = Int(readLine()!)!
    Narray.append(temp)
    total += Double(temp)
    dict[temp, default: 0] += 1
}

Narray = Narray.sorted()
print(Int(round(total/Double(N))))
print(Narray[N/2])

let maxValue = dict.max(by: {$0.value < $1.value})!.value

var mode = dict.filter({ $0.value == maxValue}).keys.sorted()

if mode.count > 1 {
    print("\(mode[1])")
}else {
    print("\(mode[0])")
}

print(Narray.max()! - Narray.min()!)
