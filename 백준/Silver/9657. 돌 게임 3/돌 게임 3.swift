var n = Int(readLine()!)!

var dp : [String] = Array(repeating: "", count: 1001)

dp[1] = "SK"
dp[2] = "CY"
dp[3] = "SK"
dp[4] = "SK"

if n > 4 {
    for i in 5...n {
        let temp = [dp[i-1], dp[i-3], dp[i-4]]
       
        for j in temp {
            if j == "CY" {
                dp[i] = "SK"
            }
        }
        
        if dp[i] == "" {
            dp[i] += "CY"
        }
    }
}

print(dp[n])
