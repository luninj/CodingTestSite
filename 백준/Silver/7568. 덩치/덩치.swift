var n = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: 0, count: 2), count: n)

var answer = Array(repeating: 1, count: n)

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map{Int($0)!}
}

for j in 0..<n {
    for k in 0..<n {
        if arr[j][0] < arr[k][0] && arr[j][1] < arr[k][1] {
            answer[j] += 1
        }
    }
}

for l in 0..<n {
    print("\(answer[l])", terminator: " " )
}
