//Solution goes in Sources
extension Array {
    func accumulate<T>(_ function: (Element) -> T) -> [T] {
        var answer = [T]()
        for each in self {
            answer.append(function(each))
        }
        return answer
    }
}
