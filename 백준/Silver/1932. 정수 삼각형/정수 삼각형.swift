var n = Int(readLine()!)!

var arr : [[Int]] = []
var dp : [[Int]] = []

for a in 1...n {
    let temp2 = readLine()!.split(separator: " ").map{Int($0)!}
    dp.append(Array(repeating: 0, count: a))
    arr.append(temp2)
}

dp[0][0] = arr[0][0]

for i in stride(from: 1, through: n-1, by: 1){
    for j in 0..<arr[i].count{
        if j == 0 {
            dp[i][j] = dp[i - 1][j] + arr[i][j]
        }
        
        else if j < arr[i].count - 1 {
            dp[i][j] = max(dp[i - 1][j] + arr[i][j], dp[i - 1][j - 1] + arr[i][j])
        }
        
        else if j == arr[i].count - 1 {
            dp[i][j] = dp[i - 1][j - 1] + arr[i][j]
        }
        
    }
}

print(dp[n-1].max()!)

