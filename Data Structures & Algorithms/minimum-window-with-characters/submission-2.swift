class Solution {
   func minWindow(_ s: String, _ t: String) -> String {

        var left = 0
        var strT: [Character: Int] = [:]
        var strS: [Character: Int] = [:]
        let str = Array(s)

        var bestLeft = 0
        var bestRight = 0
        var bestLength = Int.max

        for char in t {
            strT[char, default: 0] += 1
        }

        for (right, char) in s.enumerated() {
            strS[char, default: 0] += 1

            var correctCheck = true
            for key in strT.keys {
                if strS[key] == nil
                    || (strS[key] != nil && strS[key]! < strT[key]!)
                {
                    correctCheck = false
                    break
                }
            }

            if !correctCheck {
                continue
            }

            while left < right {
                if strT[str[left]] == nil  {
                    strS[str[left]]! -= 1
                    if strS[str[left]] == 0 {
                        strS[str[left]] = nil
                    }
                    left += 1
                } else if strS[str[left]]! > strT[str[left]]! {
                    strS[str[left]]! -= 1
                    if strS[str[left]] == 0 {
                        strS[str[left]] = nil
                    }
                    left += 1
                } else {
                    break
                }
            }

            let length = right - left + 1
            if bestLength > length {
                bestLength = length
                bestLeft = left
                bestRight = right
            }
        }

        return bestLength == Int.max ? "" : String(str[bestLeft...bestRight])
    }
}
