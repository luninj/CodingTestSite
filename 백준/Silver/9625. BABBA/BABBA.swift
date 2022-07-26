var K = Int(readLine()!)!

var dp : [(Int, Int)] = []

dp.append((0, 1))
dp.append((1, 1))

if K > 1 {
    for i in 2..<K {
        dp.append((dp[i-1].0 + dp[i-2].0 , dp[i-1].1 + dp[i-2].1))
    }
}

print("\(dp[K-1].0) \(dp[K-1].1)")
