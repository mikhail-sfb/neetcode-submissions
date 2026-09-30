class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {

        var daysId: [Int] = []
        var results: [Int] = Array(repeating: 0, count: temperatures.count)
        
        for (day, temp) in temperatures.enumerated() {
            while let lastDay = daysId.last, temperatures[lastDay] < temp {
                let daysUntil = day - lastDay
                daysId.removeLast()
                results[lastDay] = daysUntil
            }

            daysId.append(day)
        }

        return results
    }
}
