var N = Int(readLine()!)!

var arr : [[Int]] = [[]]
var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: 4), count: N + 1)

for _ in 1...N {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    arr.append(temp)
}

for i in 1...N {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + arr[i][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + arr[i][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + arr[i][2]
}

print(min( dp[N][0] , dp[N][1] , dp[N][2]))
