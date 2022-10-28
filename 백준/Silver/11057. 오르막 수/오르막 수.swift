var n = Int(readLine()!)!
var arr = Array(repeating: 1, count: 10)

for _ in 1..<n {
    for i in 1...9 {
        arr[i] = (arr[i-1] + arr[i]) % 10007
    }
}

print(arr.reduce(0, {$0 + $1})%10007)
