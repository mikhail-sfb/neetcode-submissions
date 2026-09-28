class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {

        var left = 0
        let str = Array(s)
        
        var maxFreq = 0
        var freq: [Character: Int] = [:]
        
        for (right, char) in str.enumerated() {
            freq[char, default: 0] += 1
            maxFreq = max(maxFreq, freq[char]!)
            
            if right - left + 1 - maxFreq > k {
                freq[str[left], default: 0] -= 1
                left += 1
            }
                
         
        }
        
        return str.count - left
    }
}
