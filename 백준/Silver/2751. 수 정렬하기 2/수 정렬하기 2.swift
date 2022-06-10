var inputNum = Int(readLine()!)!

var temp : [Int] = []

for i in 0..<inputNum {
    temp.append(Int(readLine()!)!)
}

temp = temp.sorted()

for i in temp {
    print(i)
}
