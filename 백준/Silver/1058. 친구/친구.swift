var N = Int(readLine()!)!

var friendMap : [[Character]] = []

for i in 0..<N {
    var temp = Array(readLine()!)
    friendMap.append(temp)
}
var answer = 0

for i in 0..<N {
    var count = 0
    for j in 0..<N {
        if i == j {
            continue
        }
        
        if friendMap[i][j] == "Y" {
            count += 1
        }
        
        else {
            for k in 0..<N {
                if friendMap[i][k] == "Y" && friendMap[k][j] == "Y" {
                    count += 1
                    break
                }
            }
        }
    }
    
    answer = max(answer, count)
}

print(answer)
