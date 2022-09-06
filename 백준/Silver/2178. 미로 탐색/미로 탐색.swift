var nm = readLine()!.split(separator: " ").map{Int($0)!}

var graph : [[Int]] = []

for i in 0..<nm[0] {
    graph.append(readLine()!.map{Int(String($0))!})
}

var visited = Array(repeating: Array(repeating: false, count: nm[1]), count: nm[0])
var distance = Array(repeating: Array(repeating: 0, count: nm[1]), count: nm[0])
distance[0][0] = 1

var nx = [1,-1,0,0]
var ny = [0,0,1,-1]

func bfs() {
    visited[0][0] = true

    var queue : [[Int]] = [[0,0]]
    
    while !queue.isEmpty {
        let nowNode = queue[0]
        queue.removeFirst()
        
        for i in 0...3 {
            let dx = nx[i] + nowNode[0]
            let dy = ny[i] + nowNode[1]
            
            if dx >= 0 && dy >= 0 && dx < nm[0] && dy < nm[1] {
                if graph[dx][dy] != 0 && !visited[dx][dy]{
                    distance[dx][dy] = distance[nowNode[0]][nowNode[1]] + 1
                    
                    visited[dx][dy] = true
                    queue.append([dx,dy])
                }
            }
        }
    }
}

bfs()

print(distance[nm[0]-1][nm[1]-1])
