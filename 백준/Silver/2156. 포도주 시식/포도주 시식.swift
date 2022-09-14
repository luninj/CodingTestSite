var n = Int(readLine()!)!

var dp : [Int] = Array(repeating: 0, count: n+1)
var arr : [Int] = [0]

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

dp[1] = arr[1]
if n >= 2 {
    dp[2] = arr[2] + arr[1]
}

if n >= 3 {
    for i in 3...n {
        dp[i] = max(arr[i]+dp[i-2], dp[i-3]+arr[i]+arr[i-1], dp[i-1])
    }
}

print(dp[n])
