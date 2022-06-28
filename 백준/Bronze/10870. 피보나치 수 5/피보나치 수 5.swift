var N = Int(readLine()!)!

func loop (_ N : Int) -> Int {
    if N == 0 {
        return 0
    }
    
    else if N == 1 {
        return 1
    }
    
    else {
        return loop(N-1) + loop(N-2)
    }
}

print(loop(N))
