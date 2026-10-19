class Solution {
    func isHappy(_ n: Int) -> Bool {
        var seen = Set<Int>()
        var curr = n

        while !seen.contains(curr) {
            seen.insert(curr)

            var num = curr
            var next = 0

            while num > 0 {
                let digit = num % 10
                next += digit * digit
                num /= 10
            }
            
            if next == 1 {
                return true
            }

            curr = next
        }


        return false
    }
}
