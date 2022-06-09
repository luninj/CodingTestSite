var inputCountNum : Int = Int(readLine()!)!
var testNum : [Int] = readLine()!.split(separator: " ").map{Int($0)!}

for i in testNum {
    if i == 1 {
        inputCountNum -= 1
    }
    
    else if i == 2 {
        
    }
    
    else {
        test : for j in 2..<i {
            if i % j == 0 {
                inputCountNum -= 1
                break test
            }
        }
    }
}

print(inputCountNum)
