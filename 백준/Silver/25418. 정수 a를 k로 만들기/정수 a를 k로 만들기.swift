var AK = readLine()!.split(separator: " ").map{Int($0)!}
var A = AK[0]
var K = AK[1]

var count = 0

while K != A {
    if K % 2 == 1 {
        K = K - 1
        count += 1
    }
    
    else {
        if K / 2 >= A {
            K = K/2
            count += 1
        }
        
        else {
            K = K - 1
            count += 1
        }
    }
}

print(count)
