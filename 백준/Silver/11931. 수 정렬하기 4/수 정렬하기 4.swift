var N = Int(readLine()!)!

var arr : [Int] = []

for _ in 0..<N {
    arr.append(Int(readLine()!)!)
}

arr = arr.sorted(by: >)

for i in arr {
    print(i)
}
