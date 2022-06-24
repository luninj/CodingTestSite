var answer : [Int] = []

while true {
    let LPV = readLine()!.split(separator: " ").map{Int($0)!}
    
    if LPV == [0, 0, 0] {
        break
    }
    
    var temp1 = (LPV[2] / LPV[1]) * LPV[0]
    let temp2 = LPV[2] % LPV[1]
    if temp2 > LPV[0] {
        temp1 += LPV[0]
    }
    
    else {
        temp1 += temp2
    }
    
    answer.append(temp1)
}

for i in 0..<answer.count {
    print("Case \(i+1): \(answer[i])")
}
