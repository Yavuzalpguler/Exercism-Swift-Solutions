//Solution goes in Sources
struct ScaleGenerator {
    let name: String
    private let pattern: String
    private let sharpNotes = ["A", "A#", "B", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#"]
    private let flatNotes = ["A", "Bb", "B", "C", "Db", "D", "Eb", "E", "F", "Gb", "G", "Ab"]
    private let usesSharps: Bool
    private let tonic: String

    func pitches() -> [String] {
        var result = [tonic]
        
        let scale = usesSharps ? sharpNotes : flatNotes
        guard var index = scale.firstIndex(of: tonic) else { print("bad index"); fatalError() }
        for step in pattern.dropLast() {
            index = (index + (step == "m" ? 1 : step == "M" ? 2 : 3)) % 12
            result.append(scale[index])
        }
        
        return result
    }
    
    init(tonic: String, scaleName: String, pattern: String = "mmmmmmmmmmmm") {
        self.tonic = "\(String(tonic.first!).uppercased())\(tonic.dropFirst())"
        name = "\(self.tonic) \(scaleName.lowercased())"
        self.pattern = pattern
 
        switch (tonic, scaleName) {
        case ("F", _), ("Bb", _), ("Eb", _), ("Ab", _), ("Db", _), ("Gb", "major"), ("d", _), ("g", _), ("c", _), ("f", _), ("bb", _), ("eb", "minor"):
            usesSharps = false
        default: usesSharps = true
        }
    }
    
}
