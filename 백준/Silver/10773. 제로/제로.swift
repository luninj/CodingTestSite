var K = Int(readLine()!)!

var stack : [Int] = []

for _ in 0..<K {
    let temp = Int(readLine()!)!
    
    if temp == 0 {
        stack.removeLast()
    }
    
    else {
        stack.append(temp)
    }
}

var sum = 0
for i in stack {
    sum += i
}

print(sum)
