var nm = readLine()!.split(separator: " ").map{Int($0)!}

var arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var temp : [Int] = []
var visited = Array(repeating: false, count: nm[0])

func dfs(_ depth : Int) {
    if depth == nm[1] {
        if temp == temp.sorted() {
            for i in temp {
                print(i, terminator: " ")
            }
            print()
        }
        
        return
    }
    
    for i in 0..<nm[0] {
        if !visited[i] {
            temp.append(arr[i])
            visited[i] = true
            dfs(depth+1)
            temp.removeLast()
            visited[i] = false
        }
    }
}

dfs(0)
