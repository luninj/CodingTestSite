var T = Int(readLine()!)!

var answer : [Int] = []

for _ in 0..<T {
    var temp = readLine()!.split(separator: " ").map{Int($0)!}
    
    temp = temp.sorted(by: >)
    answer.append(temp[2])
}

for i in answer {
    print(i)
}
