var N = Int(readLine()!)!
var InputNum = readLine()!.split(separator: " ").map{Int($0)!}
var dp = InputNum
var answer = dp[0]

for i in 1..<N {
    dp[i] = max(dp[i-1] + InputNum[i], InputNum[i])
    answer = max(answer, dp[i])
}

print(answer)
