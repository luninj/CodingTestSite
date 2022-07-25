var n = Int(readLine()!)!
var dict : [String : Bool] = [:]

for i in 0..<n {
    var temp = readLine()!.split(separator: " ").map{String($0)}
    if temp[1] == "enter" {
        dict[temp[0]] = true
    }
    
    else {
        dict[temp[0]] = nil
    }
}

dict.keys.sorted(by: >).forEach{ print($0)}
