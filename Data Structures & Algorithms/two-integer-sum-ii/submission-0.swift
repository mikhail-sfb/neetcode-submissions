class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var left = 0
        var right = numbers.count - 1
        
        while left < right {
            let res = numbers[left] + numbers[right]
            
            if target == res {
                return [left + 1, right + 1]
            } else if target < res {
                right -= 1
            } else {
                left += 1
            }
        }
        
        return []
    }
}
