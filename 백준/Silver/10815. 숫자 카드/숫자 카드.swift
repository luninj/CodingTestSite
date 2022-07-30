var N = Int(readLine()!)!
var Narray = readLine()!.split(separator: " ").map{Int($0)!}
Narray = Narray.sorted()

var M = Int(readLine()!)!
var Marray = readLine()!.split(separator: " ").map{Int($0)!}

var answer = ""

func binarySearch(_ left: Int,_ right: Int, _ number: Int,_ array:[Int]) -> Bool{
    var result = false
    if left > right {
        return false
    }
    let middle: Int = (left + right) / 2
    
    if array[middle] > number {
        result = binarySearch(left, middle - 1, number,array)
    }
    
    else if array[middle] < number {
        result = binarySearch(middle + 1, right, number,array)
    }
    
    else{
        return true
    }
    return result
}

for i in Marray {
    if binarySearch(0, N-1, i, Narray) {
        answer += "1 "
    }
    
    else {
        answer += "0 "
    }
}

print(answer)
