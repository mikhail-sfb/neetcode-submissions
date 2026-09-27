class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        
        var left = 0
        var right = heights.count - 1
        var area = 0
        
        while left < right {
            let width = right - left
            let height = min(heights[right], heights[left])
            let currArea = width * height
            
            area = max(area, currArea)
            
            if heights[left] < heights[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        
        return area
    }
}
