var inputNum = readLine()!.split(separator: " ").map{Int($0)!}

var humanNum = Array(1...inputNum[0])
var correct : [Int] = []
var count = inputNum[1] - 1

while !humanNum.isEmpty {
    if count < humanNum.count {
        correct.append(humanNum[count])
        humanNum.remove(at: count)
        count = count + inputNum[1] - 1
    }
    
    else {
        count -= humanNum.count
    }
}

print("<" + correct.map{String($0)}.joined(separator: ", ") + ">")
