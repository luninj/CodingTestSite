func solution(_ phone_number:String) -> String {
    let count = phone_number.count
    let arr = Array(phone_number)
    var answer = ""
    
    for _ in 0..<count-4 {
        answer += "*"
    }
    
    for i in count-4..<count {
        answer += String(arr[i])
    }
    
    return answer
}