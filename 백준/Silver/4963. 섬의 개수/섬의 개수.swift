var ans : [Int] = []
while true {
    var wh = readLine()!.split(separator: " ").map{Int($0)!}
    if wh[0] == 0 && wh[1] == 0 {
        break
    }
    
    var map : [[Int]] = []
    var visit = Array(repeating: Array(repeating: false, count: wh[0]), count: wh[1])
    for _ in 0..<wh[1] {
        map.append(readLine()!.split(separator: " ").map{Int($0)!})
    }
    
    func dfs(_ x : Int, _ y : Int) {
        let nx = [1,-1,0,0,-1,-1,1,1]
        let ny = [0,0,1,-1,-1,1,-1,1]
        
        for i in 0..<8 {
            var dx = x + nx[i]
            var dy = y + ny[i]
            
            if dx >= 0, dy >= 0, dx < wh[1], dy < wh[0] {
                if map[dx][dy] == 1, !visit[dx][dy] {
                    visit[dx][dy] = true
                    dfs(dx, dy)
                }
            }
        }
    }
    
    var count = 0
    
    for i in 0..<wh[1] {
        for j in 0..<wh[0] {
            if map[i][j] == 1, !visit[i][j] {
                visit[i][j] = true
                dfs(i, j)
                count += 1
            }
        }
    }
    
    ans.append(count)
}

for i in ans {
    print(i)
}
