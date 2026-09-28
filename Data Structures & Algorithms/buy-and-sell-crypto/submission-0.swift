class Solution {
     func maxProfit(_ prices: [Int]) -> Int {
        var left = prices.first!
        var profit = 0
        
        for right in prices.dropFirst() {
            profit = max(profit, right - left)
            
            if left > right {
                left = right
            }
        }
        
        return profit
    }
}
