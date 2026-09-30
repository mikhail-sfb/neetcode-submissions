 class MinStack {
        private var stack: [Int] = []
        private var minimums: [Int] = []

        init() {

        }

        func push(_ val: Int) {
            minimums.append(min(val, minimums.last ?? Int.max))
            stack.append(val)
        }

        func pop() {
            stack.removeLast()
            minimums.removeLast()
        }

        func top() -> Int {
            return stack.last ?? 0
        }

        func getMin() -> Int {
            return minimums.last ?? 0
        }
    }
