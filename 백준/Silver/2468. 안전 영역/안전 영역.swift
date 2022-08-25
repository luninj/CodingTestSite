var n = Int(readLine()!)!

var secureArea : [[Int]] = []
var height : Set<Int> = []

for _ in 0..<n {
    let temp = readLine()!.split(separator: " ").map{Int($0)!}
    secureArea.append(temp)
    for i in temp {
        height.insert(i)
    }
}

let standardArea = secureArea
var maximun = 1

func dfs(_ x : Int, _ y : Int, _ h : Int) {
    if x < 0 || y < 0 || x >= n || y >= n || secureArea[x][y] <= h {
        return
    }
    
    secureArea[x][y] = h
    
    dfs(x+1, y, h)
    dfs(x-1, y, h)
    dfs(x, y+1, h)
    dfs(x, y-1, h)
}


for i in height {
    var count = 0
    for j in 0..<n {
        for k in 0..<n {
            if secureArea[j][k] > i {
                count += 1
                dfs(j,k,i)
            }
        }
    }
    
    maximun = max(maximun, count)
    secureArea = standardArea
    
}

print(maximun)
