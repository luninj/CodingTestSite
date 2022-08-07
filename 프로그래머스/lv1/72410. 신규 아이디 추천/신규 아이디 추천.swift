import Foundation

func solution(_ new_id:String) -> String {
    var answer = onesol(new_id)
    answer = twosol(answer)
    answer = threesol(answer)
    answer = foursol(answer)
    answer = fivesol(answer)
    answer = sixsol(answer)
    answer = sevensol(answer)
    answer = foursol(answer)
    return answer
}

func onesol(_ answer:String) -> String {
    return answer.lowercased()
}

func twosol(_ answer:String) -> String {
    var temp = ""
    
    for i in answer {
        switch i {
        case "a"..."z":
            temp += String(i)
        case "-":
            temp += String(i)
        case "_":
            temp += String(i)
        case ".":
            temp += String(i)
        case "0"..."9":
            temp += String(i)
        default: break
        }
    }
    return temp
}

func threesol(_ answer:String) -> String {
    var temp = answer
    while temp.contains("..") {
        temp = temp.replacingOccurrences(of: "..", with: ".")
    }
    return temp
}

func foursol(_ answer:String) -> String {
    var temp = answer
    if temp.first == "." {
        temp.removeFirst()
    }
    
    if temp.last == "." {
        temp.removeLast()
    }
    return temp
}

func fivesol(_ answer:String) -> String {
    if answer.isEmpty {
        return "a"
    }
    
    else {
        return answer
    }
}

func sixsol(_ answer:String) -> String {
    var temp = answer
    if temp.count >= 16 {
        let endIndex = answer.index(answer.startIndex, offsetBy: 14)
        temp = String(answer[...endIndex])
    }
    
    return temp
}

func sevensol(_ answer:String) -> String {
    var temp = answer
    if temp.count <= 2 {
        while temp.count != 3 {
            temp += String(temp.last!)
        }
    }
    return temp
}