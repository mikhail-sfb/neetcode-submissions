class Solution {

    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var write = right

        var res = Array(repeating: 0, count: nums.count)

        while left <= right {
            if abs(nums[left]) > abs(nums[right]) {
                res[write] = nums[left] * nums[left]
                write -= 1
                left += 1
            } else {
                res[write] = nums[right] * nums[right]
                write -= 1
                right -= 1
            }
        }
 
        return res
    }
}
