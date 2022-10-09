var nm = readLine()!.split(separator: " ").map{Int($0)!}

var arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var result : [String] = []

func dfs(_ depth : Int, _ start : Int) {
    if depth == nm[1] {
        print(result.joined(separator: " "))
        return
    }
    
    for i in start..<nm[0] {
        result.append(String(arr[i]))
        dfs(depth+1, i)
        result.removeLast()
    }
}

dfs(0, 0)
