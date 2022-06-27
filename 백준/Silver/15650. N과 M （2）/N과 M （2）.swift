var NM = readLine()!.split(separator: " ").map{Int($0)!}
var N = NM[0]
var M = NM[1]
var visit = Array(repeating: false, count: N+1)
var stack : [Int] = []
var depth = 0

func loop(depth: Int) {
    if depth == M {
        for j in 0..<M-1 {
            for k in j+1..<M {
                if stack[j] > stack[k] {
                    return
                }
            }
        }
        print(stack.map{String($0)}.joined(separator: " "))
    }
    
    else {
        for i in 1...N {
            if visit[i] == false {
                stack.append(i)
                visit[i] = true
                
                loop(depth: depth + 1)
                
                stack.removeLast()
                visit[i] = false
            }
        }
    }
}

loop(depth: depth)
