var NL = readLine()!.split(separator: " ").map{Int($0)!}
var N = NL[0]
var L = NL[1]

var x = -1
var minNum = 1


for i in L...100 {
    let temp = (i * (i-1)) / 2
    
    if (N - temp) % i == 0 && (N - temp) / i >= 0 {
        x = (N - temp) / i
        minNum = i
        break
    }
}

for j in 0..<minNum {
    print(x+j, terminator: " ")
}
