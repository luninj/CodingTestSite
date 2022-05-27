var inputNum = Int(readLine()!)!
var x = [String : Int]()

for _ in 0..<inputNum {
    let inputStr = readLine()!
    x[inputStr, default: 0] += 1
}

var y = x.sorted {
    $0.key.count == $1.key.count ? $0 < $1 : $0.key.count < $1.key.count
}

for i in y {
    print(i.0)
}
