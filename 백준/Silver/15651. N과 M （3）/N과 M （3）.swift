var nm = readLine()!.split(separator: " ").map{Int($0)!}
var temp : [String] = []

func dfs(_ depth : Int) {
    if depth == nm[1] {
        print(temp.joined(separator: " "))
        return
    }
    
    for i in 1...nm[0] {
        temp.append(String(i))
        dfs(depth+1)
        temp.removeLast()
    }
}

dfs(0)
