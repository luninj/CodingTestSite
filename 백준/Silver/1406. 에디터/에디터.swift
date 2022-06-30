var N = Array(readLine()!)

var M = Int(readLine()!)!

var logic : [Character] = []

for _ in 0..<M {
    let temp = readLine()!
    switch temp {
    case "L" :
        if !N.isEmpty {
            logic.append(N.removeLast())
        }
    case "D" :
        if !logic.isEmpty {
            N.append(logic.removeLast())
        }
        
    case "B" :
        if !N.isEmpty {
            N.removeLast()
        }
        
    default:
        N.append(temp.last!)
    }
}

print(String(N+logic.reversed()))
