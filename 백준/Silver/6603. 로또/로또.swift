while true {
    let inputData = readLine()!.split(separator: " ").map{Int($0)!}
    if inputData[0] == 0 {
        break
    }
    
    var num : [Int] = []
    for i in 1..<inputData.count {
        num.append(inputData[i])
    }
    var visit = Array(repeating: false, count: num.count)
    var lot : [Int] = []
    
    dfs(0,0)
    print()
    
    func dfs(_ depth : Int, _ start : Int) {
        if depth == 6 {
            print(lot.map{String($0)}.joined(separator: " "))
            return
        }
        
        for i in start..<num.count {
            if !visit[i] {
                visit[i] = true
                lot.append(num[i])
                dfs(depth+1, i)
                lot.removeLast()
                visit[i] = false
            }
        }
    }
}
