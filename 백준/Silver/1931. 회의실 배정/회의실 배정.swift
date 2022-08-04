var N = Int(readLine()!)!

var arr : [(Int, Int)] = []

for _ in 0..<N {
    let temp =  readLine()!.split(separator: " ").map{Int($0)!}
    
    arr.append((temp[0], temp[1]))
}

arr.sort(by: {$0.0 < $1.0})
arr.sort(by: {$0.1 < $1.1})


var preNum = 0
var answer = 0

for i in arr {
    if i.0 >= preNum {
        preNum = i.1
        answer += 1
    }
}

print(answer)
