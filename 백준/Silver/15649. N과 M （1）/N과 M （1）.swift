var NM = readLine()!.split(separator: " ").map{Int($0)!}

var N = NM[0]
var M = NM[1]
var visit = Array(repeating: false, count: NM[0] + 1)
var depth = 0

var stack : [Int] = []

func loop(depth: Int) {
    if depth == M {
        print(stack.map{String($0)}.joined(separator: " "))
        return
    }
    
    else {
        for i in 1...N {
            if visit[i] == false {
                stack.append(i)
                visit[i] = true
                
                loop(depth: depth + 1)
                
                visit[i] = false
                stack.removeLast()
                
            }
        }
    }
}

loop(depth: depth)
