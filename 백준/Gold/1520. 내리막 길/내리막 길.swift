var inputNum = readLine()!.split(separator: " ").map{Int($0)!}

var graph : [[Int]] = []
for _ in 0..<inputNum[0] {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    graph.append(temp)
}

var dp : [[Int]] = Array(repeating: Array(repeating: -1, count: inputNum[1]), count: inputNum[0])

let nx = [1,-1,0,0]
let ny = [0,0,1,-1]

func dfs(_ x : Int, _ y : Int) -> Int {
    if x == inputNum[0]-1 && y == inputNum[1]-1 {
        return 1
    }
    
    if dp[x][y] == -1 {
        dp[x][y] = 0
        for i in 0...3 {
            let dx = nx[i] + x
            let dy = ny[i] + y
            
            if dx >= 0 && dy >= 0 && dx < inputNum[0] && dy < inputNum[1] && (graph[x][y] > graph[dx][dy]) {
                dp[x][y] += dfs(dx, dy)
            }
        }
    }
    
    return dp[x][y]
}

print(dfs(0,0))
