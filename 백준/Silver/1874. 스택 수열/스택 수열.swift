import Foundation

var N = Int(readLine()!)!

var count = 1
var answer : [String] = []
var stack : [Int] = []

for _ in 0..<N {
    let inputNum = Int(readLine()!)!
    
    while count <= inputNum {
        stack.append(count)
        answer.append("+")
        count += 1
    }
    
    if stack.last == inputNum {
        stack.popLast()
        answer.append("-")
    }
    
    else {
        print("NO")
        exit(0)
    }
}

print(answer.joined(separator: "\n"))
