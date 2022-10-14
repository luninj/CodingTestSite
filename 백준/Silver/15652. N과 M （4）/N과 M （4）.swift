var nm = readLine()!.split(separator: " ").map{Int($0)!}
var temp : [String] = []

func dfs(_ now : Int) {
    if temp.count == nm[1] {
        print(temp.joined(separator: " "))
        return
    }
    
    for i in now...nm[0] {
        temp.append(String(i))
        dfs(i)
        temp.removeLast()
    }
    
}

dfs(1)

