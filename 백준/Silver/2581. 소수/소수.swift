var startNum : Int = Int(readLine()!)!
var endNum : Int = Int(readLine()!)!

var total : Int = 0
var minPrime : Int = 0

for i in startNum...endNum {
    var notPrime : Int = 0
    if i == 1 {
        notPrime = 1
    }
    else if i == 2 {
        
    }
    
    else {
        primeCheck : for j in 2..<i {
            if i % j == 0 {
                notPrime = 1
                break primeCheck
            }
        }
    }
    
    if notPrime == 0 {
        total += i
        if minPrime == 0 {
            minPrime = i
        }
    }
}

if minPrime == 0 {
    print("-1")
}

else {
    print(total)
    print(minPrime)
}
