var N = Int(readLine()!)!

var dp = Array(repeating: "", count: 1000)

dp[0] = "SK"
dp[1] = "CY"
dp[2] = "SK"

if N > 2 {
    for i in 3..<N {
        if dp[i-1] == "CY" || dp[i-3] == "CY" {
            dp[i] = "SK"
        }
        
        else {
            dp[i] = "CY"
        }
    }
}

print(dp[N-1])
