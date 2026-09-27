class Solution {
    func trap(_ height: [Int]) -> Int {
        
        guard height.count > 1 else {
            return 0
        }

        var left = 0
        var right = height.count - 1
        
        var water = 0
        var leftMax = height[left]
        var rightMax = height[right]
        
        while left < right {
            if leftMax < rightMax {
                left += 1
                leftMax = max(leftMax, height[left])
                water += leftMax - height[left]
            } else {
                right -= 1
                rightMax = max(rightMax, height[right])
                water += rightMax - height[right]
            }
                
        }
        
        
        return water
    }
}
