class Solution {
 func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = Array(repeating: Set<Character>(), count: 9)
        var column = Array(repeating: Set<Character>(), count: 9)
        var box = Array(repeating: Set<Character>(), count: 9)
        
        for (rowId, row) in board.enumerated() {
            for (colId, value) in row.enumerated() {
                if value == "." {
                    continue
                }
                
                if !rows[rowId].insert(value).inserted {
                    return false
                }
                
                if !column[colId].insert(value).inserted {
                    return false
                }
                
                // row -
                let boxId = (rowId / 3) * 3 + colId / 3
                if !box[boxId].insert(value).inserted {
                    return false
                }
            }
        }
        
        return true
    }
}
