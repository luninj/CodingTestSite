var NK = readLine()!.split(separator: " ").map{Int($0)!}

var coin : [Int] = []
for _ in 0..<NK[0] {
    coin.append(Int(readLine()!)!)
}

var count = 0
var sum = NK[1]


for i in stride(from: NK[0]-1, through: 0, by: -1) {
    if sum / coin[i] != 0 {
        let temp = sum / coin[i]
        count += temp
        sum -= coin[i] * temp
    }
}

print(count)
