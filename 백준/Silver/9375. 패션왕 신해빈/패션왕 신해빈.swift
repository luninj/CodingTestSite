var n = Int(readLine()!)!

var answer = Array(repeating: 1, count: n)

for i in 0..<n {
    let testNum = Int(readLine()!)!
    var dict : [String : Int] = [:]
    
    for _ in 0..<testNum {
        let temp = readLine()!.split(separator: " ").map{String($0)}
   
        if dict[temp[1]] == nil {
            dict.updateValue(1, forKey: String(temp[1]))
        }
        
        else {
            dict[temp[1]]! += 1
        }
    }
    
    for dict in dict {
        answer[i] *= (dict.value + 1)
    }
    
    answer[i] -= 1
}

for j in answer {
    print(j)
}