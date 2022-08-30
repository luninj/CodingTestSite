var nm = readLine()!.split(separator: " ").map{Int($0)!}

var graph : [[Int]] = []
for _ in 0..<nm[0] {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}
var answer = 0
var ageCount = 0

loop : while answer < 2 {
    melting()
    ageCount += 1
    answer = parts(graph)
    if answer == -1 {
        ageCount = 0
        break loop
    }
}
print(ageCount)

func melting() {
    var tempGraph = graph
    
    for i in 0..<nm[0] {
        for j in 0..<nm[1] {
            var count = 0
            
            if graph[i][j] != 0 {
                if graph[i-1][j] == 0 { count += 1 }
                if graph[i+1][j] == 0 { count += 1 }
                if graph[i][j-1] == 0 { count += 1 }
                if graph[i][j+1] == 0 { count += 1 }
            }
            
            (graph[i][j] - count) > 0 ? (tempGraph[i][j] -= count) : (tempGraph[i][j] = 0)
        }
    }
    
    graph = tempGraph
}

func parts(_ graph : [[Int]]) -> Int {
    var visited = Array(repeating: Array(repeating: false, count: nm[1]), count: nm[0])
    var count = 0
    
    for i in 0..<nm[0] {
        for j in 0..<nm[1] {
            if graph[i][j] != 0 && !visited[i][j] {
                visited[i][j] = true
                count += 1
                dfs(i,j)
            }
        }
    }
    
    func dfs(_ x : Int, _ y : Int) {
        let nx = [1,-1,0,0]
        let ny = [0,0,1,-1]
        
        for i in 0...3 {
            let dx = nx[i] + x
            let dy = ny[i] + y
            
            if dx >= 0 && dy >= 0 && dx < nm[0] && dy < nm[1] {
                if !visited[dx][dy] && graph[dx][dy] > 0 {
                    visited[dx][dy] = true
                    dfs(dx, dy)
                }
            }
        }
    }
    
    if count > 0 {
        return count
    }
    else {
        return -1
    }
}

