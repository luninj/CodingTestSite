var dict : [Int : Int] = [:]
var quiz : [Int] = []
var answerArray : [Int] = []
var answer = 0

for i in 0..<8 {
    let temp = Int(readLine()!)!
    dict.updateValue(i+1, forKey: temp)
    quiz.append(temp)
}

var temp2 = dict.sorted{$0.0 > $1.0}
quiz = quiz.sorted(by: >)

for j in 0..<5 {
    answerArray.append(dict[quiz[j], default: 0])
}
answerArray = answerArray.sorted()

for k in 0..<5 {
    answer += quiz[k]
}

print(answer)

for m in 0..<5 {
    print(answerArray[m], terminator: " ")
}
