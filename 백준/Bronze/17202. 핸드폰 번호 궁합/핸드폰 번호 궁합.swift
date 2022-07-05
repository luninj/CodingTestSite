var A = Array(readLine()!)
var B = Array(readLine()!)

var C : [Int] = []

for i in 0..<8 {
    C.append(Int(String(A[i]))!)
    C.append(Int(String(B[i]))!)
}

var i = 0
var j = 1

while !(C.count == 2) {
    var temp : [Int] = []
    
    while !(j == C.count) {
        let sum = C[i]+C[j]
        if sum < 10 {
            temp.append(Int(String(sum))!)
        }
        
        else {
            temp.append(Int(String(sum%10))!)
        }
        
        i += 1
        j += 1
    }
    C = temp
    i = 0
    j = 1
}

for i in C {
    print(i, terminator: "")
}
