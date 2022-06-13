var inputNum = readLine()!.split(separator: " ").map{Int($0)!}

var intarr = readLine()!.split(separator: " ").map{Int($0)!}

var count = 0

for i in 0..<inputNum[0] {
    var x = 0
    
    for j in i..<inputNum[0] {
        x += intarr[j]
        if x > inputNum[1] {
            break
        }
        
        else if x == inputNum[1] {
            count += 1
        }
    }
}

print(count)
