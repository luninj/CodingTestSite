var stairNumber = Int(readLine()!)!

var stairArray : [Int] = []
var stairScore : [Int] = Array(repeating: 0, count: stairNumber)

for _ in 0..<stairNumber {
    stairArray.append(Int(readLine()!)!)
}

if stairNumber == 1 {
    print(stairArray[0])
}

else if stairNumber == 2 {
    print(stairArray[0] + stairArray[1])
}

else if stairNumber == 3 {
    print(max(stairArray[0] + stairArray[2], stairArray[1] + stairArray[2]))
}

else {
    stairScore[0] = stairArray[0]
    stairScore[1] = stairArray[0] + stairArray[1]
    stairScore[2] = max(stairArray[0] + stairArray[2], stairArray[1] + stairArray[2])
    
    for i in 3..<stairNumber {
        stairScore[i] = max(stairArray[i] + stairScore[i-2], stairArray[i] + stairArray[i-1] + stairScore[i-3])
    }
    
    print(stairScore[stairNumber-1])
}
