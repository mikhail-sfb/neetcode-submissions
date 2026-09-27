class Solution {
 func threeSum(_ nums: [Int]) -> [[Int]] {
        
        let sorted = nums.sorted()
        var left = 0
        let right = sorted.count - 1
        var result: [[Int]] = []
        
        var fixed = Set<[Int]>()
        while left < right {
            let fix = sorted[left]
            
            left += 1
            
            var localLeft = left
            var localRight = right
            
            while localLeft < localRight {
                let res = sorted[localLeft] + sorted[localRight]
                
                if fix + res == 0 {
                    let answer = [fix, sorted[localLeft], sorted[localRight]]
                    
                    if !fixed.insert(answer).inserted {
                        localRight -= 1
                        continue
                    }
                    
                    result.append(answer)
                    localLeft = left
                    localRight -= 1
                } else if fix + res < 0 {
                    localLeft += 1
                } else {
                    localRight -= 1
                }
            }
        }
        
        return result
    }
}
