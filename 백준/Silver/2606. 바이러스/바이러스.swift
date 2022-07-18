var comNum = Int(readLine()!)!
var networkNum = Int(readLine()!)!

var network = [Int:[Int]]()

for i in 1...comNum {
    network[i] = []
}

for _ in 0..<networkNum {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    network[temp[0]]?.append(temp[1])
    network[temp[1]]?.append(temp[0])
}

var visit : [Int] = []
var stack : [Int] = [1]

while stack.count != 0 {
    guard let temp = stack.popLast() else{ fatalError()}
    
    if !visit.contains(temp) {
        visit.append(temp)
        
        guard let temp2 = network[temp] else{ fatalError()}
        stack += temp2
    }
}

print(visit.count-1)
