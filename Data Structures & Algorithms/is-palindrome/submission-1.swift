class Solution {
 func isPalindrome(_ s: String) -> Bool {
        
        let chars = Array(s.lowercased())
        var left = 0
        var right = chars.count - 1
        
        while left < right {
            if chars[left].isWhitespace || chars[left].isPunctuation {
                left += 1
                continue
            }
            
            if chars[right].isWhitespace || chars[right].isPunctuation {
                right -= 1
                continue
            }
            
            if chars[left] != chars[right] {
                return false
            }
            
            left += 1
            right -= 1
        }
        
        return true
     }
}
