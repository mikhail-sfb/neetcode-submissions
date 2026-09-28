class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        let chars = Array(s)

        guard !t.isEmpty, t.count <= chars.count else {
            return ""
        }

        var target: [Character: Int] = [:]

        for char in t {
            target[char, default: 0] += 1
        }

        var window: [Character: Int] = [:]
        let need = target.count

        var have = 0

        var left = 0
        var bestLeft = 0
        var bestLength = Int.max

        for (right, char) in chars.enumerated() {
            window[char, default: 0] += 1

            if let requiredCount = target[char],
                window[char, default: 0] == requiredCount
            {
                have += 1
            }

            while have == need {
                let currLength = right - left + 1

                if currLength < bestLength {
                    bestLength = currLength
                    bestLeft = left
                }

                let removed = chars[left]
                window[removed]! -= 1

                if let requiredCount = target[removed],
                    window[removed, default: 0] < requiredCount
                {
                    have -= 1
                }

                left += 1
            }
        }

        guard bestLength != Int.max else {
            return ""
        }

        return String(chars[bestLeft..<(bestLeft + bestLength)])
    }
}
