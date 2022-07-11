var n = Int(readLine()!)!

var arr : [Int] = readLine()!.split(separator: " ").map{Int($0)!}
var dp : [Int] = Array(repeating: 0, count: n)


var answer = 0

for i in 0..<n {
    dp[i] = arr[i]
    for j in 0..<i {
        if arr[j] < arr[i] {
            dp[i] = max(dp[j] + arr[i], dp[i])
        }
    }
}

print(dp.max()!)
