//Solution goes in Sources
struct DNA {
    private var counts_data: [String:Int] = ["A": 0, "T":0, "C":0, "G":0]

    init?(strand: String) {
        for char in strand {
            let nucleotide = String(char)
            guard let count = counts_data[nucleotide] else {
                return nil
            }

            counts_data[nucleotide] = count+1
        }
    }

    func count(_ char: String) -> Int? {
        counts_data[char]
    }

    func counts() -> [String:Int] {
        counts_data
    }
}
