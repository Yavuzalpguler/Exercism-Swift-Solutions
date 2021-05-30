//Solution goes in Sources
struct CollatzConjecture {
    
    enum InputError: Error {
        case inputNotPositive
    }

    static func steps(_ number: Int) throws -> Int {
        guard number > 0 else {
            throw InputError.inputNotPositive
        }
        
        var steps = 0
        var testNumber = number
        while (testNumber != 1) {
            if (testNumber % 2) == 0 {
                testNumber /= 2
            } else {
                testNumber = 3 * testNumber + 1
            }
            steps += 1
        }
        
        return steps
    }
    
}
