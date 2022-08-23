let t = Int(readLine()!)!

for _ in 0..<t {
    let nmk = readLine()!.split(separator: " ").map{Int($0)!}
    let n = nmk[0]
    let m = nmk[1]
    let k = nmk[2]
    
    var graph = Array(repeating: Array(repeating: false, count: m), count: n)
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    for _ in 0..<k {
        let temp = readLine()!.split(separator: " ").map{Int($0)!}
        graph[temp[0]][temp[1]] = true
    }
    
    var count = 0
    for i in 0..<n {
        for j in 0..<m {
            if graph[i][j] && !visited[i][j] {
                visited[i][j] = true
                dfs(i,j)
                count += 1
            }
        }
    }
    
    print(count)
    
    func dfs(_ x : Int, _ y : Int) {
        let dx = [1,-1,0,0]
        let dy = [0,0,1,-1]
        
        for i in 0...3 {
            var nx = x + dx[i]
            var ny = y + dy[i]
            
            if nx >= 0 && nx < n && ny >= 0 && ny < m {
                if graph[nx][ny] && !visited[nx][ny]{
                    visited[nx][ny] = true
                    dfs(nx, ny)
                }
            }
        }
    }
}
