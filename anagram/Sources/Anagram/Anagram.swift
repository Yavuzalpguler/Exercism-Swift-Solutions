//Solution goes in Sources
extension String {
    func isAnagramOf(_ other: String) -> Bool {
        let left = self.lowercased()
        let right = other.lowercased()

        if left == right {
            return false
        }

        return left.sorted() == right.sorted()
    }
}

struct Anagram {
    let word: String
    
    func match(_ words: [String]) -> [String] {
        return words.filter { $0.isAnagramOf(self.word) }
    }
}
