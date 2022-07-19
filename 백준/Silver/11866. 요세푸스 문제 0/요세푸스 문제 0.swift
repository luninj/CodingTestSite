var NK = readLine()!.split(separator: " ").map{Int($0)!}

var arr = Array(1...NK[0])
var stack : [Int] = []

var count = NK[1]

while !arr.isEmpty {
    if count <= arr.count {
        stack.append(arr[count-1])
        arr.remove(at: count-1)
        count = count + NK[1] - 1
    }
    
    else {
        count -= arr.count
    }
}

var answer = ""
answer += "<"
for i in stack {
    answer += "\(i), "
}
answer.removeLast()
answer.removeLast()
answer += ">"
print(answer)
