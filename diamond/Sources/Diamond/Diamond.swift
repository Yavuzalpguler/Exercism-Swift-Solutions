struct Diamond {
    static let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map { $0 }

    static func makeDiamond(letter: Character) -> [String] {
        let index = alphabet.index(of: letter) ?? -1
        if (index == -1) {
            return []
        }
        let numberOfLines = index * 2 + 1
        var result = [String]()

        for lineNumber in 0..<numberOfLines {
            var line = ""

            for column in 0..<numberOfLines {
                let characterPosition = index - abs(index - lineNumber)

                if abs(index - column) == characterPosition  {
                    line.append(alphabet[characterPosition ])
                } else {
                    line.append(" ")
                }
            }
            result.append(line)
        }

        return result
    }
}
