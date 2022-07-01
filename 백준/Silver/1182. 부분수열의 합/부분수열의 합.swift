var NS = readLine()!.split(separator: " ").map{Int($0)!}
var N = NS[0]
var S = NS[1]

var inputNum = readLine()!.split(separator: " ").map{Int($0)!}.sorted()
var visit = Array(repeating: false, count: 21)

var count = 0
var sum = 0

func dfs(_ depth : Int, _ start : Int) {
    if sum == S && depth >= 1 {
        count += 1
    }
    
    for i in start..<N {
        if !visit[i] {
            visit[i] = true
            sum += inputNum[i]
            dfs(depth+1, i)
            visit[i] = false
            sum -= inputNum[i]
        }
    }
}

dfs(0, 0)
print(count)
