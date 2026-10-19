class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var res = Array(repeating: 0, count: nums1.count)
        var nextLargeNums2: [Int: Int] = [:]

        var stack: [Int] = []
        for num in nums2 {
      
            while let last = stack.last, last < num {
                stack.removeLast()
                nextLargeNums2[last, default: 0] = num
            }

            stack.append(num)
        }
        
        for num in stack {
            nextLargeNums2[num, default: 0] = -1
        }
        
        for (id, num) in nums1.enumerated() {
           res[id] = nextLargeNums2[num] ?? -1
        }
        
        return res
    }
}
