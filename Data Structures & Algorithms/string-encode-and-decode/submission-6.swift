class Solution {

 func encode(_ strs: [String]) -> String {
    /// ДО:
    /// let taggedStrs = strs
    ///     .map { "\($0.count)#" + $0 }
    ///     .joined()
    /// return taggedStrs

    /// ПОСЛЕ:
    var result = ""

    let estimatedCapacity = strs.reduce(0) {
        $0 + $1.utf8.count + 8
    }

    result.reserveCapacity(estimatedCapacity)

    for word in strs {
        result.append(contentsOf: String(word.count))
        result.append("#")
        result.append(contentsOf: word)
    }

    return result
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
