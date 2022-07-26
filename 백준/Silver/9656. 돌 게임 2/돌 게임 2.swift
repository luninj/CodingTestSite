var N = Int(readLine()!)!

var dp : [String] = Array(repeating: "", count: 1000)

dp[0] = "CY"
dp[1] = "SK"
dp[2] = "CY"

if N > 2 {
    for i in 3..<N {
        if dp[i-1] == "SK" || dp[i-3] == "Sk" {
            dp[i] = "CY"
        }
        
        else {
            dp[i] = "SK"
        }
    }
}

print(dp[N-1])
