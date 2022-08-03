func solution(_ dartResult:String) -> Int {
    let arr = Array(dartResult)
    var score : [Int] = []
    var temp = 0
    var firstCheck = [1]
    
    var i = 0
    
    while i != dartResult.count {
        if arr[i] == "S" {
            
        }
        
        else if arr[i] == "D" {
            temp *= temp
        }
        
        else if arr[i] == "T" {
            temp *= temp * temp
        }
        
        else if arr[i] == "*" {
            if score.isEmpty {
                temp *= 2
            }
            
            else {
                score.append((score.removeLast())*2)
                temp *= 2
            }
        }
        
        else if arr[i] == "#" {
            temp *= -1
        }
        
        else {
            if arr[i+1] == "0" {
                if firstCheck.isEmpty {
                    score.append(temp)
                }
                
                else {
                    firstCheck.removeLast()
                }
                
                temp = 10
                i += 1
            }
            
            else {
                if firstCheck.isEmpty {
                    score.append(temp)
                }
                
                else {
                    firstCheck.removeLast()
                }
                let temp1 = String(arr[i])
                temp = Int(temp1)!
            }
        }
        i += 1
    }
    
    score.append(temp)
    var answer = 0
    for j in score {
        answer += j
    }
    return answer
}