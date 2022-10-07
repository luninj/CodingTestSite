var n = Int(readLine()!)!

var arr : [Int] = []
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var dp = Array(repeating: 0, count: 1000000)
dp[0] = 1
dp[1] = 2
dp[2] = 4

if arr.max()! > 3 {
    for i in 3..<arr.max()! {
        dp[i] = (dp[i-3]+dp[i-2]+dp[i-1]) % 1000000009
    }
}

for i in 0..<n {
    print(dp[arr[i]-1])
}
