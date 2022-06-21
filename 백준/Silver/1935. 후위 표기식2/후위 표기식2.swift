import Foundation

let N = Int(readLine()!)!
let InputText = readLine()!
var stack : [Double] = []
var NArray : [Double] = []


for _ in 0..<N {
    let num = Double(readLine()!)!
    NArray.append(num)
}

for i in InputText {
    if i == "+" {
        let ap = stack.removeLast()
        let bp = stack.removeLast()
        stack.append(ap + bp)
    } else if i == "-" {
        let am = stack.removeLast()
        let bm = stack.removeLast()
        stack.append(bm - am)
    } else if i == "/" {
        let ad = stack.removeLast()
        let bd = stack.removeLast()
        stack.append(bd / ad)
    } else if i == "*" {
        let ax = stack.removeLast()
        let bx = stack.removeLast()
        stack.append(ax * bx)
    } else {
        let a = i.asciiValue! - 65
        stack.append(NArray[Int(a)])
    }
}

let answer = String(format: "%.2f", stack[0])
print(answer)
