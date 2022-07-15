var NM = readLine()!.split(separator: " ").map{Int($0)!}

var arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var bt = Array(repeating: false, count: NM[0])

var depth = 0
var answer = ""
var result : [Int] = []

func dfs(_ depth : Int) {
    if depth == NM[1] {
        answer += result.map{String($0)}.joined(separator: " ")
        answer += "\n"
        return
    }
    
    for i in 0..<NM[0] {
        if !bt[i] {
            bt[i] = true
            result.append(arr[i])
            dfs(depth+1)
            result.removeLast()
            bt[i] = false
        }
    }
}

dfs(depth)
print(answer)
