//Solution goes in Sources
fileprivate let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

class Robot {
    public var name = "";
    private var names = Set<String>()

    init() {
        resetName()
    }
    
    public func resetName() {
        var newName: String
        repeat {
            newName = getNewName()
        } while(names.contains(newName))
        self.name = newName
        self.names.insert(newName)
    }
    // it does not seem to ensure that all the names will be unique
    private func getNewName() -> String {
        return (
            String(letters.randomElement()!) +
            String(letters.randomElement()!) +
            String(Int.random(in: 0 ..< 10)) +
            String(Int.random(in: 0 ..< 10)) +
            String(Int.random(in: 0 ..< 10))
        )
    }
}
