let inputNum = readLine()!.split(separator: " ").map{Int($0)!}
let m = inputNum[0]
let n = inputNum[1]
let k = inputNum[2]

var graph : [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)

for _ in 0..<k {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    for i in temp[0]..<temp[2] {
        for j in temp[1]..<temp[3] {
            graph[j][i] = 1
        }
    }
}

var visited : [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
var answer : [Int] = []
var count = 0

for i in 0..<m {
    for j in 0..<n {
        if !visited[i][j] && graph[i][j] == 0 {
            visited[i][j] = true
            count += 1
            dfs(i,j)
            answer.append(count)
            count = 0
        }
    }
}

print(answer.count)
answer.sort()
for i in answer {
    print(i, terminator: " ")
}


func dfs(_ x : Int, _ y : Int){
    let a = [1,-1,0,0]
    let b = [0,0,1,-1]
    
    for i in 0...3 {
        var dx = x + a[i]
        var dy = y + b[i]
        
        if dx >= 0 && dy >= 0 && dx < m && dy < n {
            if !visited[dx][dy] && graph[dx][dy] == 0 {
                visited[dx][dy] = true
                count += 1
                dfs(dx, dy)
            }
        }
    }
}

