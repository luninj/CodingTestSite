import Foundation

let limitnum = 15
var one = readLine() ?? ""
if one.count < limitnum {
    one += String(repeating: " ", count: limitnum-one.count)
}
var two = readLine() ?? ""
if two.count < limitnum {
    two += String(repeating: " ", count: limitnum-two.count)
}
var thr = readLine() ?? ""
if thr.count < limitnum {
    thr += String(repeating: " ", count: limitnum-thr.count)
}
var fou = readLine() ?? ""
if fou.count < limitnum {
    fou += String(repeating: " ", count: limitnum-fou.count)
}
var fiv = readLine() ?? ""
if fiv.count < limitnum {
    fiv += String(repeating: " ", count: limitnum-fiv.count)
}

var final = ""

for i in 0..<limitnum {
    final += String(one[one.index(one.startIndex, offsetBy: i)])
    final += String(two[two.index(two.startIndex, offsetBy: i)])
    final += String(thr[thr.index(thr.startIndex, offsetBy: i)])
    final += String(fou[fou.index(fou.startIndex, offsetBy: i)])
    final += String(fiv[fiv.index(fiv.startIndex, offsetBy: i)])
}
final = final.replacingOccurrences(of: " ", with: "")


print(final)
