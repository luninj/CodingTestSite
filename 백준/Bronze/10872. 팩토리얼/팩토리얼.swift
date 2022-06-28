var N = Int(readLine()!)!

func factorial(N : Int) -> Int {
    if N <= 1 {
        return 1
    }
    
    else {
        return N * factorial(N : N-1)
    }
}

var answer = factorial(N : N)

print(answer)
