var inputString = Array(readLine()!)

var array : [Int] = Array(repeating: 0, count: 26)

for i in inputString {
    let temp = i.asciiValue!
    
    let temp2 = Int(exactly: temp)! - 65
    array[temp2] += 1
}

var oddcount = 0
var oddNum = 0
var answer = ""

for i in 0...25 {
    if array[i] != 0 {
        if array[i] % 2 == 1 {
            oddcount += 1
            oddNum = i
            for _ in 0..<array[i]/2 {
                answer += String(UnicodeScalar(i+65)!)
            }
        }
        
        
        else {
            for _ in 0..<array[i]/2 {
                answer += String(UnicodeScalar(i+65)!)
            }
        }
    }
}

if oddcount > 1 {
    print("I'm Sorry Hansoo")
}

else {
    let temp3 = answer.reversed()
    if oddcount == 1 {
        answer += String(UnicodeScalar(oddNum+65)!)
    }
    answer += temp3

    print(answer)
    
}
