var A = readLine()!.split(separator: " ").map{Int($0)!}
var Aarray : [[Int]] = []
for _ in 0..<A[0] {
    Aarray.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var B = readLine()!.split(separator: " ").map{Int($0)!}
var Barray : [[Int]] = []
for _ in 0..<B[0] {
    Barray.append(readLine()!.split(separator: " ").map{Int($0)!})
}

var answer : [[Int]] = Array(repeating: Array(repeating: 0, count: B[1]), count: A[0])

for i in 0..<A[0] {
    for j in 0..<B[1] {
        for k in 0..<A[1] {
            answer[i][j] += Aarray[i][k] * Barray[k][j]
        }
    }
}

for i in answer {
    for j in i {
        print(j, terminator: " ")
    }
    print()
}
