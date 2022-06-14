import Foundation

var answer : [String] = []

while true {
    let x = readLine() ?? ""
    var stack : String = ""
    
    if x == "." {
        break;
    }
    
    else {
        for i in x {
            if i == "(" {
                stack.append("(")
            }
            
            else if i == ")" {
                stack.append(")")
            }
            
            else if i == "[" {
                stack.append("[")
            }
            
            else if i == "]" {
                stack.append("]")
            }
        }
        
        for _ in 0...stack.count {
            stack = stack.description.replacingOccurrences(of: "()", with: "")
            stack = stack.description.replacingOccurrences(of: "[]", with: "")
        }
        
        if stack == "" {
            answer.append("yes")
        }
        else {
            answer.append("no")
        }
    }
}
print(answer.joined(separator: "\n"))
