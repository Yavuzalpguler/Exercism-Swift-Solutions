//Solution goes in Sources
struct ETL {
    static func transform(_ input: Dictionary<Int, Array<String>>) -> Dictionary<String, Int> {
        var result = [String: Int]()
        
        for (point, letters) in input {
            for letter in letters {
                result[letter.lowercased()] = point
            }
        }

        return result
    }
}
