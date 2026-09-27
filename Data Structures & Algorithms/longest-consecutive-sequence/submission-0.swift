class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        
        for num in nums {
            set.insert(num)
        }
        
        var max = 0
        for num in set {
            if set.contains(num - 1) {
                continue
            }
            
            var step = 0
            while set.contains(num + step) {
                step += 1
            }
            
            if max < step {
                max = step
            }
        }
        
        return max
      }
}
