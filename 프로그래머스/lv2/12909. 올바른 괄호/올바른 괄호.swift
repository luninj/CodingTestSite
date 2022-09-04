import Foundation

func solution(_ s:String) -> Bool
{
    var ans = 0
    
    for i in s {
        if i == "(" {
            ans += 1
        }
        
        else {
            if ans == 0 {
                return false
            }
            
            else {
                ans -= 1
            }
        }
    }
    
    return ans == 0 ? true : false
}