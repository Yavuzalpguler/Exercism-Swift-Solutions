//Solution goes in Sources

class Sieve {
    
    private let range: [Int]
    
    init(_ maxRange: Int) {
        self.range = Array(2...maxRange)
    }
    
    var primes: [Int] {
        
        var primes = [Int]()
 
        for number in self.range {
            let potentialFactors = Array(2...number)
            var isPrime = true
            for num in potentialFactors {
                if number % num == 0 && num != number{
                    isPrime = false
                    break
                }
            }
            if isPrime {
                primes.append(number)
            }
        }
        return primes
    }
}
