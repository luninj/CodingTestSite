let n = Int(readLine()!)!
var array : [[Int]] = Array(repeating: [], count: n+1)

for _ in 1..<n {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    let first = temp[0]
    let second = temp[1]
    array[first].append(second)
    array[second].append(first)
}

var queue : [Int] = []
var visited : [Bool] = Array(repeating: false, count: n+1)
var result : [Int] = Array(repeating: 0, count: n+1)

visited[1] = true
queue.append(1)
while !queue.isEmpty {
    let element = queue.removeFirst()
    for i in array[element] {
        if !visited[i] {
            visited[i] = true
            queue.append(i)
            result[i] = element
        }
    }
}

for i in 2...n {
    print(result[i])
}
