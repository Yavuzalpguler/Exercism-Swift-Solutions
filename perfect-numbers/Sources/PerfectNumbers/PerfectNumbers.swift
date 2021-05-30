//Solution goes in Sources
enum NaturalNumber {
  case abundant
  case deficient
  case perfect
}

struct NumberClassifier {
  
  let number: Int
  let classification: NaturalNumber
  
  init(number: Int) {
    self.number = number
    let sumOfFactors = (1..<number).filter { number.isMultiple(of: $0) }.reduce(0, +)
    if sumOfFactors < number {
      self.classification = .deficient
    } else if sumOfFactors > number {
      self.classification = .abundant
    } else {
      self.classification = .perfect
    }
  }
}
