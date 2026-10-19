class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        let sortedPeople = people.sorted()
        
        var left = 0
        var right = sortedPeople.count - 1
        var res = 0

        // 1 2 4 5
        while left <= right {
            if sortedPeople[right] == limit {
                right -= 1
                res += 1
            } else if sortedPeople[right] + sortedPeople[left] > limit {
                right -= 1
                 res += 1
            }
             else  {
                left += 1
                right -= 1
                res += 1
            }  
            
        }

        return res
    }
}
