var N = Int(readLine()!)!
var Narray = readLine()!.split(separator: " ").map{Int($0)!}
Narray = Narray.sorted()

var M = Int(readLine()!)!
var Marray = readLine()!.split(separator: " ").map{Int($0)!}

func binarySearch(_ arr : [Int], _ target : Int) -> Int {
    var start = 0
    var end = arr.count - 1
    
    while start <= end {
        let mid = (start+end)/2
        if Narray[mid] == target {
            return 1
        }
        
        else if Narray[mid] > target {
            end = mid - 1
        }
        
        else if Narray[mid] < target {
            start = mid + 1
        }
    }
    
    return 0
}

for i in 0..<M {
    print(binarySearch(Narray, Marray[i]))
}
