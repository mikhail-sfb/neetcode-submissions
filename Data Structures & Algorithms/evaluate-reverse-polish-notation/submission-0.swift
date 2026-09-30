class Solution {
     func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []
        stack.reserveCapacity(tokens.count)
        
        var operations: [String: (Int,Int) -> Int ] = [
            "*": {$0 * $1},
            "+": {$0 + $1},
            "-": {$0 - $1},
            "/": {$0 / $1},

        ]
        
        for token in tokens {
            if let num = Int(token) {
                stack.append(num)
                continue
            }
            
            let second = stack.popLast()!
            let first = stack.popLast()!
            
            if let operation = operations[token] {
                let result = operation(first, second)
                stack.append(result)
            }
        }
        
        return stack.last ?? 0
    }
}
