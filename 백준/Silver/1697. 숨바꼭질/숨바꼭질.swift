var nk = readLine()!.split(separator: " ").map{Int($0)!}

var visited = Array(repeating: false, count: 100001)
var depth: [Int] = Array(repeating: 0, count: 100001)
let result = bfs(nk[0])

func bfs(_ n : Int) -> Int {
    var queue : [Int] = []
    queue.append(n)
    
    while !queue.isEmpty {
        let data = queue.removeFirst()
        
        if data == nk[1] {
            break
        }
        
        if data > 0 && !visited[data-1] {
            queue.append(data-1)
            visited[data-1] = true
            depth[data-1] = depth[data] + 1
        }
        
        if data < 100000 && !visited[data + 1] {
            queue.append(data + 1)
            visited[data + 1] = true
            depth[data + 1] = depth[data] + 1
        }
        
        if data * 2 < 100001 && !visited[2 * data] {
            queue.append(2 * data)
            visited[2 * data] = true
            depth[data * 2] = depth[data] + 1
        }
    }
    return depth[nk[1]]
}

print(result)
