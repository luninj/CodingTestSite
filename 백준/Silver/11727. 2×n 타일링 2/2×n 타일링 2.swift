var N = Int(readLine()!)!

var dp = Array(repeating: 0, count: N)

if N == 1 {
    print(1)
}

else if N == 2 {
    print(3)
}

else {
    dp[0] = 1
    dp[1] = 3
    
    for i in 2..<N {
        dp[i] = (dp[i-1] + dp[i-2]*2) % 10007
    }
    
    print(dp[N-1] % 10007)
}

