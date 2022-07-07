var N = Int(readLine()!)!
var t = Array(repeating: 0, count: N+1)
var p = Array(repeating: 0, count: N+1)
var dp = Array(repeating: 0, count: 1001)

for i in 1...N {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    t[i] = temp[0]
    p[i] = temp[1]
    dp[i] = temp[1]
}

for j in stride(from: N, through: 1, by: -1){
    
    if t[j] + j <= N + 1 {
        
        dp[j] = max(dp[j + 1], dp[j + t[j]] + p[j])
    }else {
        dp[j] = dp[j + 1]
    }
}

print(dp.max()!)
