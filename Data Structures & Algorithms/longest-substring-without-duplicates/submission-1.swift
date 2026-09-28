class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {

        var left = 0
        let str = Array(s)

        var set = Set<Character>()
        var maxLength = 0

        for (right, char) in str.enumerated() {
            while set.contains(char) {
                set.remove(str[left])
                left += 1
            }
            
            set.insert(char)

            maxLength = max(right - left + 1, maxLength)
        }

        return maxLength
    }
}
