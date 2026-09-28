class Solution {

    func isValid(_ s: String) -> Bool {
        
        if s.count % 2 != 0 {
            return false
        }

        var stack: [Character] = []
        for char in s {
            if char == ")" {
                guard let brace = stack.popLast() else {
                    return false
                }
                
                if brace != "(" {
                    return false
                }

                continue
            }
            
            if char == "}" {
                guard let brace = stack.popLast() else {
                    return false
                }
                
                if brace != "{" {
                    return false
                }

                continue
            }
            
            if char == "]" {
                guard let brace = stack.popLast() else {
                    return false
                }
                
                if brace != "[" {
                    return false
                }

                continue
            }

            stack.append(char)
        }

        return stack.isEmpty
    }
}
