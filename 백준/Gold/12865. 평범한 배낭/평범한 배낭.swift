var nk = readLine()!.split(separator: " ").map{Int($0)!}
var value : [(Int, Int)] = []

for _ in 0..<nk[0] {
    var temp = readLine()!.split(separator: " ").map{Int($0)!}
    value.append((temp[0],temp[1]))
}

var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: nk[1]+1), count: nk[0])

for i in 0..<nk[0] {
    for j in 1...nk[1] {
        
        if i == 0 {
            if j >= value[i].0 {
                dp[i][j] = value[i].1
            }
        }
        
        else {
            if j < value[i].0 {
                dp[i][j] = dp[i-1][j]
            }
            
            else {
                dp[i][j] = max(dp[i-1][j], value[i].1 + dp[i-1][j-value[i].0])
            }
        }
    }
}

print(dp[nk[0]-1][nk[1]])
