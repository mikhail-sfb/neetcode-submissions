class Solution {
  func isPalindrome(_ s: String) -> Bool {
        
        var left = s.startIndex
        var right = s.index(before: s.endIndex)
        
        while left < right {
            if s[left].isWhitespace || s[left].isPunctuation {
                left = s.index(after: left)
                continue
            }
            
            if s[right].isWhitespace || s[right].isPunctuation {
                right = s.index(before: right)
                continue
            }
            
            if s[left].lowercased() != s[right].lowercased() {
                return false
            }
            
            left = s.index(after: left)
            right = s.index(before: right)
        }
        
        return true
     }
}
