var t = Int(readLine()!)!

var arr : [Int] = Array(0...10000)
arr[1] = 0

for i in 2...10000 {
    for j in stride(from: i+i, through: 10000, by: i) {
        arr[j] = 0
    }
}

var answer : [[Int]] = []

for _ in 0..<t {
    let temp = Int(readLine()!)!
    
    var left = temp/2
    var right = temp/2
    while !((arr[left] + arr[right]) == temp) {
        left -= 1
        right += 1
    }
    
    answer.append([left, right])
}

for i in answer {
    print("\(i[0]) \(i[1])")
}
