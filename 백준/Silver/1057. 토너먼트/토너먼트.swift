var inputNum = readLine()!.split(separator: " ").map{Int($0)!}

var tourArray = Array(1...inputNum[0])
tourArray[inputNum[1]-1] = 0
tourArray[inputNum[2]-1] = 0
var count = 0

first : while true {
    var testArray : [Int] = []
    count += 1
    
    for i in 0..<(tourArray.count/2) {
        if tourArray[i*2] == 0 && tourArray[i*2+1] == 0 {
            break first
        }
        
        if tourArray[i*2 + 1] == 0 {
            testArray.append(0)
        }
        
        else {
            testArray.append(tourArray[i*2])
        }
        
    }
    if tourArray.count % 2 == 1 {
        testArray.append(tourArray[tourArray.count-1])
    }
    tourArray = testArray
}
print(count)
