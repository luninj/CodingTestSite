var minus = readLine()!.split(separator: "-").map{String($0)}
var temp1 = minus[0].split(separator: "+").map{Int($0)!}

var first = 0
for i in temp1 {
    first += i
}


for j in 1..<minus.count {
    let temp2 = minus[j].split(separator: "+").map{Int($0)!}
    var temp3 = 0
    for k in temp2 {
        temp3 += k
    }
    first -= temp3
}

print(first)