//Solution goes in Sources
struct PhoneNumber: CustomStringConvertible {
    let number: String
    
    var areaCode: String {
        return String(number.prefix(3))
    }

    var description: String {
        
        let localPart = number.suffix(number.count - areaCode.count)
        let exchangeCode = localPart.prefix(3)
        let subscriberNumber = localPart.suffix(4)
        return "(\(areaCode)) \(exchangeCode)-\(subscriberNumber)"
    }

    init (_ numberAsString: String) {
        var sanitizedNumbers = numberAsString.filter({$0.isNumber})
        if let firstNumber = sanitizedNumbers.first {
            if firstNumber == "1" {
                sanitizedNumbers.removeFirst()
            }
        }
        if sanitizedNumbers.count != 10 {
            sanitizedNumbers = String(repeating: "0", count: 10)
        }
        self.number = sanitizedNumbers
    }
}
