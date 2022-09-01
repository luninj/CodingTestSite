import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func dfs(_ x : Int, _ depth : Int) {
        if depth == numbers.count {
            if x == target {
                count += 1
            }
            
            return
        }
        
        dfs(x - numbers[depth], depth+1)
        dfs(x + numbers[depth], depth+1)
    }
    
    dfs(numbers[0], 1)
    dfs(-numbers[0], 1)
    
    return count
}