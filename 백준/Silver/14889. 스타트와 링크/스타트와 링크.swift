var n = Int(readLine()!)!

var map : [[Int]] = []
var visited = Array(repeating: false, count: n)
var minValue = 999999
var team1 = 0
var team2 = 0

for _ in 0..<n {
    map.append(readLine()!.split(separator: " ").map{Int($0)!})
}

func dfs(_ depth : Int, _ start : Int) {
    if depth == n/2 {
        team1 = 0
        team2 = 0
        for i in 0..<n {
            for j in 0..<n {
                if !visited[i] && !visited[j] {
                    team2 += map[i][j]
                }
                if visited[i] && visited[j] {
                    team1 += map[i][j]
                }
            }
        }
        
        minValue = min(minValue, abs(team1 - team2))
        return
    }
    
    for i in start..<n {
        if !visited[i] {
            visited[i] = true
            dfs(depth+1, i)
            visited[i] = false
        }
    }
}

dfs(0, 0)
print(minValue)
