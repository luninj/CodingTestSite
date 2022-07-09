var n = Int(readLine()!)!

var arr : [(Int, Int)] = []

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    
    arr.append((temp[0], temp[1]))
}

var answer = arr.sorted {
    if $0.0 == $1.0 {
        return $0.1 < $1.1
    }
    
    return $0.0 < $1.0
}

for i in answer {
    print(i.0, i.1)
}
