//Solution goes in Sources
struct Raindrops {
    let sounds: String

    init(_ number: Int) {
        var string = ""
        if number % 3 == 0 {
            string += "Pling"
        }
        if number % 5 == 0 {
            string += "Plang"
        }
        if number % 7 == 0 {
            string += "Plong"
        }
        sounds = string.isEmpty ? String(number) : string
    }
}
