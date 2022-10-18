var nm = readLine()!.split(separator: " ").map{Int($0)!}

var arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted()

var temp : [String] = []
var ans = ""

func dfs(_ depth : Int) {
    if depth == nm[1] {
        ans += temp.joined(separator: " ") + "\n"
        return
    }
              
    for i in 0..<nm[0] {
        temp.append(String(arr[i]))
        dfs(depth+1)
        temp.removeLast()
    }
}

dfs(0)
print(ans)
