//Solution goes in Sources
extension Array where Element == String {
    func recite() -> String {
        guard !self.isEmpty else { return "" }
        
        var recitation = ""
        var prev: String? = nil
        for next in self {
            if prev != nil {
                recitation += "For want of a \(prev!) the \(next) was lost.\n"
            }
            prev = next
        }
        recitation += "And all for the want of a \(self[0])."
        return recitation
    }
}
