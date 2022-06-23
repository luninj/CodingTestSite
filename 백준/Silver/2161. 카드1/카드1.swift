var N = Int(readLine()!)!

var NArray : [Int] = Array(1...N)
var answer : [Int] = []

while N != 1 {
    var temp : [Int] = []
    answer.append(NArray[0])
    NArray.append(NArray[1])
    NArray[0] = 0
    NArray[1] = 0
    for i in NArray {
        if i != 0 {
            temp.append(i)
        }
    }
    
    NArray = temp
    N = N - 1
    
}
answer.append(NArray[0])

for i in answer {
    print(i, terminator: " ")
}
