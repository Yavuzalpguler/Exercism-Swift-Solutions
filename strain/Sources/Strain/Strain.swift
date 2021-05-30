//Solution goes in Sources
extension Array {
    func keep(_ predicate: (Element) -> Bool) -> [Element] {
        self.filter(predicate)
    }
    
    func discard(_ predicate: (Element) -> Bool) -> [Element] {
        self.filter { !predicate($0) }
    }
}
