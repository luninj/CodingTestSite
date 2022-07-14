var N = Int(readLine()!)!

var arr : [[Int]] = []

for _ in 0..<N {
    var temp = readLine()!.split(separator: " ").map{Int($0)!}
    
    arr.append(temp)
}

arr = arr.sorted{$0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1] }

for i in arr {
    for j in i {
        print(j, terminator: " ")
    }
    print()
}
