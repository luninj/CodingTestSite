import Foundation

func solution(_ record:[String]) -> [String] {
    var answer : [String] = []
    
    var recordTemp : [[String]] = []
    var dp : [String : String] = [:]
    
    for i in 0..<record.count {
        var temp = record[i].split(separator: " ")
        if temp[0] == "Enter" {
            var enterTemp : [String] = []
            enterTemp.append(String(temp[1]))
            enterTemp.append("님이 들어왔습니다.")
            recordTemp.append(enterTemp)
            if dp[String(temp[1])] == nil {
                dp[String(temp[1])] = String(temp[2])
            }
            
            else {
                dp[String(temp[1])] = String(temp[2])
            }
        }
        
        else if temp[0] == "Leave" {
            var leaveTemp : [String] = []
            leaveTemp.append(String(temp[1]))
            leaveTemp.append("님이 나갔습니다.")
            recordTemp.append(leaveTemp)
        }
        
        else {
            dp[String(temp[1])] = String(temp[2])
        }
    }
    
    for i in recordTemp {
        var answerTemp = ""
        answerTemp = dp[i[0]]! + i[1]
        answer.append(answerTemp)
    }
    
    return answer
}