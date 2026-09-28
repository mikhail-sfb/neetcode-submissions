class Solution {

    func isValid(_ s: String) -> Bool {

        if s.count % 2 != 0 {
            return false
        }

        let pairs: [Character: Character] = [
            ")": "(",
            "]": "[",
            "}": "{",
        ]
        var stack: [Character] = []

        for char in s {
            if let expectingBrace = pairs[char] {
                guard stack.popLast() == expectingBrace else {
                    return false
                }
            } else {
                stack.append(char)
            }
        }

        return stack.isEmpty
    }
}
