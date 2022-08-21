let n = Int(readLine()!)!
var graph : [[Int]] = []
var visited = Array(repeating: Array(repeating: false, count: n), count: n)
let dx = [0,0,1,-1]
let dy = [1,-1,0,0]
var count = 0

for _ in 0..<n {
    graph.append(readLine()!.map{Int(String($0))!})
}

func dfs(_ x : Int, _ y : Int) {
    count += 1
    visited[x][y] = true
    
    for i in 0...3 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        if nx >= 0 && nx < n && ny >= 0 && ny < n {
            if !visited[nx][ny] && graph[nx][ny] == 1 {
                visited[nx][ny] = true
                dfs(nx, ny)
            }
        }
    }
}

var result : [Int] = []

for i in 0..<n {
    for j in 0..<n {
        if !visited[i][j] && graph[i][j] == 1 {
            count = 0
            dfs(i, j)
            result.append(count)
        }
    }
}

print(result.count)
result.sort()
print(result.map{String($0)}.joined(separator: "\n"))
