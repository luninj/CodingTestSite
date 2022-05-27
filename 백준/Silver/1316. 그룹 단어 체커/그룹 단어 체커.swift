let inputNum = Int(readLine()!)!

var count = 0

var inputStr : [String] = []

for _ in 0..<inputNum {
    inputStr.append(readLine()!)
}

for j in inputStr {  // 문자열들중 하나씩 고름
    var checkNum = 0
    var checkArr = Array(repeating: 1, count: 26)
    var checkChar : Character = " "
    stringcheck : for k in j { // 고른 문자열에서 알파벳 하나씩 고름
        if k != checkChar {
            if checkArr[Int(exactly: k.asciiValue!)! - 97] == 0 {
                break stringcheck
            }
            checkArr[Int(exactly: k.asciiValue!)! - 97] = 0
            checkChar = k
            checkNum += 1
        }
        
        else {
            checkNum += 1
        }
    }
    if j.count == checkNum {
        count += 1
    }
}

print(count)
