import Foundation

func solution(_ p:String) -> String {
    return logic(p)
}

func logic(_ p : String) -> String {
    var ans = ""
    if p.isEmpty {
        return ""
    }
    
    var count = 0
    var pointer = 0
    for i in p {
        if i == "(" {
            count += 1
        }
        
        else {
            count -= 1
        }
        
        if count == 0 {
            break
        }
        pointer += 1
    }

    let left = String(p[...p.index(p.startIndex,offsetBy: pointer)])
    let right = String(p[p.index(p.startIndex,offsetBy: pointer+1)...])
    
    if rightString(left) {
        ans += left
        ans += logic(right)
    }
    
    else {
        var temp = "("
        temp += logic(right)
        temp += ")"
        let start = left.index(left.startIndex, offsetBy: 1)
        let end = left.index(left.startIndex, offsetBy: left.count-1)
        let temp2 = left[start..<end]
        for i in temp2 {
            if i == "(" {
                temp += ")"
            }
            
            else {
                temp += "("
            }
        }
        ans += temp
    }
    
    return ans
}

func rightString(_ p : String) -> Bool {
    var count = 0
    for i in p {
        if i == "(" {
            count += 1
        }
        
        else {
            if count == 0 {
                return false
            }
            
            else {
                count -= 1
            }
        }
    }
    
    return true
}