class Solution {
       func productExceptSelf(_ nums: [Int]) -> [Int] {
        var dept = Array(repeating: 1, count: nums.count)
        var multiplier = 1
        
        for (index, num) in nums.enumerated() {
            dept[index] *= multiplier
            multiplier *= num
        }
        
        multiplier = 1
        for index in dept.indices.reversed() {
            dept[index] *= multiplier
            multiplier *= nums[index]
        }
        
        return dept
    }
}
