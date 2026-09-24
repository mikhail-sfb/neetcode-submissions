class Solution {

   func encode(_ strs: [String]) -> String {
          let taggedStrs = strs.map {"\($0.count)#" + $0}.joined()
          return taggedStrs
      }

    func decode(_ str: String) -> [String] {
        var startId = str.startIndex
        var res = [String]()
          
          while startId < str.endIndex {
              // gather
              var jump = 0
              
              while str[startId].isNumber {
                  let digit = str[startId].wholeNumberValue!
                  jump = jump * 10 + digit
                  startId = str.index(after: startId)
              }
              
              // skip #
              startId = str.index(after: startId)
              
              // capture
              let localEnd = str.index(startId, offsetBy: jump)
              let word = str[startId..<localEnd]
              
              // update
              res.append(String(word))
              startId = localEnd
          }
          
          return res
      }
}
