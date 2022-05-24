var inputNum = Int(readLine()!)!

var temp = String(inputNum, radix: 2)

var result = 0

for i in temp {
    if i == "1" {
        result += 1
    }
}
print(result)
