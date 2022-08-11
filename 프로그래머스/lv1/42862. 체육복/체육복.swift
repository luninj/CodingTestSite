import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var arr : [Int] = Array(repeating: 1, count: n)
    var count = 0
    
    for i in lost {
        arr[i-1] = 0
    }
    
    for i in reserve {
        arr[i-1] += 1
    }

    for i in 0..<n {
        if arr[i] == 0 {
            if i>0 && arr[i-1] > 1 {
                arr[i] = 1
                arr[i-1] = 1
            }
            
            else if i<n-1 && arr[i+1] > 1 {
                arr[i] = 1
                arr[i+1] = 1
            }
            
            else {
                count += 1
            }
        }
    }
    return n-count
}