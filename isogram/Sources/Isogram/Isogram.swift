//Solution goes in Sources

func isIsogram(_ string: String) -> Bool {
    let isogram = string.lowercased()
    for letter in isogram {
        if letter == "-" || letter == " " { continue }
        let charCount = isogram.filter({
            $0 == letter
            }).count
        if charCount > 1 {
            return false
        }
    }
    return true
}
