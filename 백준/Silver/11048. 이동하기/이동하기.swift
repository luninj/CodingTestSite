var inputNum = readLine()!.split(separator: " ").map{Int($0)!}
var N = inputNum[0]
var M = inputNum[1]

var mapData : [[Int]] = []
for _ in 0..<N {
    mapData.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var dp : [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

dp[0][0] = mapData[0][0]

for i in 0..<N {
    for j in 0..<M {
        if (i != N-1) && (j != M-1)  {
            dp[i+1][j] = max(dp[i+1][j], dp[i][j]+mapData[i+1][j])
            dp[i][j+1] = max(dp[i][j+1], dp[i][j]+mapData[i][j+1])
            dp[i+1][j+1] = max(dp[i+1][j+1], dp[i][j]+mapData[i+1][j+1])
        }
        
        else if (i==N-1) && (j != M-1) {
            dp[i][j+1] = max(dp[i][j+1], dp[i][j]+mapData[i][j+1])
        }
        
        else if (i != N-1) && (j == M-1) {
            dp[i+1][j] = max(dp[i+1][j], dp[i][j]+mapData[i+1][j])
        }
        
        
    }
}

print(dp[N-1][M-1])
