class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let setNums1 = Set(nums1)
        let setNums2 = Set(nums2)

        let (smaller, larger) = setNums1.count > setNums2.count ? (setNums2,setNums1) : (setNums1, setNums2)
        var res: [Int] = []
        res.reserveCapacity(smaller.count)
        
        for num in smaller where larger.contains(num) {
            res.append(num)
        }

        return res
    }
}
