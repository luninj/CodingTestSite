var N = Int(readLine()!)!

var personArray = readLine()!.split(separator: " ").map{Int($0)!}
var answer : [Int] = Array(repeating: 0, count: N)

for i in 0..<N {
    var left = personArray[i]
    
    line : for j in 0..<N {
        if left == 0 && answer[j] == 0 {
            answer[j] = i+1
            break line
        }
        
        else if answer[j] == 0 {
            left -= 1
        }
    }
}

for i in answer {
    print(i, terminator: " ")
}
