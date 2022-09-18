let mn = readLine()!.split(separator: " ").map{Int($0)!}

var graph : [[Int]] = []
var depth = Array(repeating: Array(repeating: 0, count: mn[0]), count: mn[1])
for _ in 0..<mn[1] {
    graph.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var queue = [(Int, Int)]()
let nx = [1,-1,0,0]
let ny = [0,0,1,-1]
var pointer = 0
var lastIdx = (0,0)
var empty = true
var count = 0

for i in 0..<mn[1] {
    for j in 0..<mn[0] {
        if graph[i][j] == 1 {
            queue.append((i,j))
        }
    }
}

func bfs() {
    while pointer < queue.count {
        let pop = queue[pointer]
        pointer += 1
        for i in 0...3 {
            let dx = pop.1 + nx[i]
            let dy = pop.0 + ny[i]
            
            if dx >= 0 && dy >= 0 && dx < mn[0] && dy < mn[1] {
                if graph[dy][dx] == 0 {
                    graph[dy][dx] = 1
                    depth[dy][dx] = depth[pop.0][pop.1] + 1
                    queue.append((dy,dx))
                    lastIdx = (dy,dx)
                }
            }
        }
    }
}

bfs()

for i in 0..<mn[0] {
    for j in 0..<mn[1] {
        if graph[j][i] == 0 {
            empty = false
        }
    }
}

if empty {
    print(depth[lastIdx.0][lastIdx.1])
}

else {
    print(-1)
}
