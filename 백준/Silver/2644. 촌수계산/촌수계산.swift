import Foundation

var nodeNum = Int(readLine()!)!
var inputNum1 = readLine()!.split(separator: " ").map{Int($0)!}
var start = inputNum1[0]
var end = inputNum1[1]
var connect = Int(readLine()!)!
var arr : [[Int]] = Array(repeating: [], count: nodeNum+1)
var visited = Array(repeating: false, count: nodeNum+1)
visited[start] = true

for i in 0..<connect {
    var temp = readLine()!.split(separator: " ").map{Int($0)!}
    arr[temp[0]].append(temp[1])
    arr[temp[1]].append(temp[0])
}

bfs()

func bfs() {
    var queue = [(start,0)]
    var isFind = false
    while !queue.isEmpty {
        let first = queue.removeLast()
        
        if first.0 == end {
            isFind = true
            print(first.1)
            break
        }
        
        for next in arr[first.0] {
            if !visited[next] {
                visited[next] = true
                queue.append((next, first.1 + 1))
            }
        }
    }
    
    if !isFind {
        print(-1)
    }
}
