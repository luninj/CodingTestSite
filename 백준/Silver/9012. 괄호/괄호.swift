var N = Int(readLine()!)!

var answer : [String] = []

for _ in 0..<N {
    var count = 0
    var temp = readLine()!
    
    for i in temp {
        if i == "(" {
            count += 1
        }
        
        else if i == ")" {
            count -= 1
            
            if count < 0 {
                break
            }
        }
    }
    
    if count == 0 {
        answer.append("YES")
    }
    
    else {
        answer.append("NO")
    }
}

for i in answer {
    print(i)
}
