class Solution {
func asteroidCollision(_ asteroids: [Int]) -> [Int] {
        var stack: [Int] = []
        guard asteroids.count > 1 else {
            return [asteroids.first!]
        }

        stack.append(asteroids.first!)

        for asteroid in asteroids.dropFirst() {
            while true {
                if let last = stack.last {
                    if !(last > 0 && asteroid < 0)
                    {
                        stack.append(asteroid)
                        break
                    }

                    if abs(last) > abs(asteroid) {
                        break
                    } else if abs(last) == abs(asteroid) {
                        stack.removeLast()
                        break
                    } else {
                        stack.removeLast()
                    }
                } else {
                    stack.append(asteroid)
                    break
                }
            }
        }

        return stack
    }
}
