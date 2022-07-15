var NM = readLine()!.split(separator: " ").map{Int($0)!}
var N = readLine()!.split(separator: " ").map{Int($0)!}
var answer : [Int] = Array(repeating: N[0], count: NM[0])
var arr : [Int] = []

for i in 1..<NM[0] {
    answer[i] = answer[i-1] + N[i]
}

for _ in 0..<NM[1] {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    
    let start = temp[0]-1
    let end = temp[1]-1
    
    let temp2 = answer[end] - (start == 0 ? 0 : answer[start-1])
    arr.append(temp2)
}

for j in arr {
    print(j)
}
