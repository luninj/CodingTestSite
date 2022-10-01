var nm = readLine()!.split(separator: " ").map{Int($0)!}

func get2(_ num : Int) -> Int {
    var count = 0
    var i = 2
    while num >= i {
        count += num/i
        i *= 2
    }
    
    return count
}

func get5(_ num : Int) -> Int {
    var count = 0
    var i = 5
    while num >= i {
        count += num/i
        i *= 5
    }
    
    return count
}

let a = get2(nm[0]) - get2(nm[0]-nm[1]) - get2(nm[1])
let b = get5(nm[0]) - get5(nm[0]-nm[1]) - get5(nm[1])

print(a > b ? b: a)
