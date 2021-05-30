//Solution goes in Sources
enum Foods: UInt {
    case eggs = 1
    case peanuts = 2
    case shellfish = 4
    case strawberries = 8
    case tomatoes = 16
    case chocolate = 32
    case pollen = 64
    case cats = 128
}

class Allergies {
    private var allegicScore:UInt
    
    init(_ input: UInt) {
        allegicScore = input
    }
    
    func hasAllergy(_ food:Foods) -> Bool {
        return allegicScore & food.rawValue != 0
    }
}
