var N = Int(readLine()!)!

var depth = 0

var answer : [Int] = []
var visit = Array(repeating: false, count: N)

func dfs(_ depth : Int) {
    if depth == N {
        var temp = ""
        for i in answer {
            temp += (String(i) + " ")
        }
        print(temp)
    }
    
    for i in 0..<N {
        if !visit[i] {
            answer.append(i+1)
            visit[i] = true
            dfs(depth+1)
            answer.removeLast()
            visit[i] = false
        }
    }
}

dfs(depth)
