var T = Int(readLine()!)!

var answer : [Int] = []

var arr = Array(repeating: Array(repeating: -1, count: 31), count: 31)

func logic(_ n: Int, _ m: Int) -> Int {
    if n == 1 {
        arr[n][m] = m
    }
    
    if n == m {
        arr[n][m] = 1
    }
    
    if arr[n][m] < 0 {
        arr[n][m] = logic(n, m-1) + logic(n-1, m-1)
    }
    
    return arr[n][m]
}

for _ in 0..<T {
    
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    answer.append(logic(temp[0], temp[1]))
}

for i in answer {
    print(i)
}
