let nm = readLine()!.split(separator: " ").map{Int($0)!}
let n = nm[0]
let m = nm[1]

var list : [[Int]] = Array(repeating: [], count: n+1)
var visited = Array(repeating: false, count: n+1)

for _ in 0..<m {
    var temp = readLine()!.split(separator: " ").map{Int($0)!}
    list[temp[0]].append(temp[1])
    list[temp[1]].append(temp[0])
}

var count = 0
for i in 1...n {
    if !visited[i] {
        count += 1
        dfs(i)
    }
}

func dfs(_ nowNode : Int) {
    visited[nowNode] = true
    if list[nowNode].count != 0 {
        for j in 0..<list[nowNode].count {
            var next = list[nowNode][j]
            if !visited[next] {
                dfs(next)
            }
        }
    }
}

print(count)
