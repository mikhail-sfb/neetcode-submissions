class Solution {
 func maxArea(_ heights: [Int]) -> Int {
        
        var left = 0
        var right = heights.count - 1
        
        var area = min(heights[left], heights[right]) * abs(right - left)
        while left < right {
            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
            
            area = max(area, min(heights[left], heights[right]) * abs(right - left))
        }
        
        return area
    }
}
