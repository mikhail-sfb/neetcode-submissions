class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var s1Freq: [Character: Int] = [:]
        var s2Freq: [Character: Int] = [:]
        
        for char in s1 {
            s1Freq[char, default: 0] += 1
        }
        
        let windowSize = s1.count
        var left = 0
        let str2 = Array(s2)
        
        for (right, char) in s2.enumerated() {
            s2Freq[char, default: 0] += 1
            
            if windowSize == right - left + 1 {
                if s1Freq == s2Freq {
                    return true
                }
                
                s2Freq[str2[left]]! -= 1
                if s2Freq[str2[left]] == 0 {
                    s2Freq[str2[left]] = nil
                }
                left += 1
            }
        }
        
        return false
    }
}
