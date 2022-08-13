func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var oneString : [String] = []
    var twoString : [String] = []
    
    oneString = NCountToString(arr1,n)
    twoString = NCountToString(arr2,n)

    var answer: [String] = []
    for i in 0..<n {
        var tempLast = ""
        var tempOne = Array(oneString[i])
        var tempTwo = Array(twoString[i])

        for j in 0..<n {
            if tempOne[j] == "0" && tempTwo[j] == "0" {
                tempLast += " "
            }

            else {
                tempLast += "#"
            }
        }
        answer.append(tempLast)
    }
    
    return answer
}

func NCountToString(_ arr :[Int], _ n:Int) -> [String] {
    var returnArr : [String] = []
    for i in 0..<n {
        var temp = ""
        temp = String(arr[i], radix: 2)
        while temp.count < n {
            temp = "0" + temp
        }
        returnArr.append(temp)
    }
    return returnArr
}