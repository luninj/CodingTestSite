var nmv = readLine()!.split(separator: " ").map{Int($0)!}
var n = nmv[0]
var m = nmv[1]
var v = nmv[2]

var visited = Array(repeating: false, count: n)
var matrix = Array(repeating: Array(repeating: 0, count: n), count: n)

for i in 0..<m {
    var temp = readLine()!.split(separator: " ").map{Int($0)!}
    matrix[temp[0]-1][temp[1]-1] = 1
    matrix[temp[1]-1][temp[0]-1] = 1
}

func dfs(_ v : Int) {
    visited[v] = true
    print(v+1, terminator: " ")
    
    for i in 0..<n {
        if visited[i] == false && matrix[v][i] == 1 {
            dfs(i)
        }
    }
}

dfs(v-1)
print("")
visited = Array(repeating: false, count: n)

func bfs(_ v : Int) {
    var queue : [Int] = []
    visited[v] = true
    queue.append(v)
    
    while !queue.isEmpty {
        var temp = queue.removeFirst()
        print(temp+1, terminator: " ")
        
        for i in 0..<n {
            if visited[i] == false && matrix[temp][i] == 1 {
                queue.append(i)
                visited[i] = true
            }
        }
    }
}

bfs(v-1)
