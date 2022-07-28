var N = Int(readLine()!)!

var stack : [Int] = []

for _ in 0..<N {
    var Input = readLine()!.split(separator: " ").map{String($0)}
    
    if Input[0] == "push" {
        stack.append(Int(Input[1])!)
    }
    
    else if Input[0] == "top" {
        if stack.count == 0 {
            print(-1)
        }
        
        else {
            print(stack.last ?? 0)
        }
    }
    
    else if Input[0] == "size" {
        print(stack.count)
    }
    
    else if Input[0] == "empty" {
        if stack.count == 0 {
            print(1)
        }
        
        else {
            print(0)
        }
    }
    
    else {
        if stack.count == 0 {
            print(-1)
        }
        
        else {
            print(stack.removeLast())
        }
    }
}
