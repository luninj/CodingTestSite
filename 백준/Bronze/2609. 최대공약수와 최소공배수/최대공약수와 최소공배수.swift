let InputNum = readLine()!.split(separator: " ").map{Int(String($0))!}

var max = InputNum.max()!
var min = InputNum.min()!
var r = max % min

while r > 0 {
    max = min
    min = r
    r = max % min
}

print(min)
print(InputNum[0] * InputNum[1]/min)
