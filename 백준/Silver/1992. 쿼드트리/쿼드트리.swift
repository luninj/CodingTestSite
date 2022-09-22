var n = Int(readLine()!)!

var image : [[String]] = []
for _ in 0..<n {
    let temp = readLine()!
    image.append(temp.map{String($0)})
}

func dfs(_ lr : Int ,_ rr : Int , _ lc : Int , _ rc : Int ) -> String{
    let first = image[lr][lc]
    
    for i in lr..<rr {
        for j in lc..<rc {
            if first != image[i][j] {
                let nextR = (rr+lr)/2
                let nextC = (rc+lc)/2
                return "(\(dfs(lr, nextR, lc, nextC))\(dfs(lr, nextR, nextC, rc))\(dfs(nextR, rr, lc, nextC))\(dfs(nextR, rr, nextC, rc)))"
            }
        }
    }
    return first
}


print(dfs(0, n, 0, n))
