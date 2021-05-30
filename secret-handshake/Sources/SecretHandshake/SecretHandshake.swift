//Solution goes in Sources
struct SecretHandshake {
    var commands: [String] = []
    init(_ code: Int) {
        if code & 1 != 0 { commands.append("wink") }
        if code & 2 != 0 { commands.append("double blink") }
        if code & 4 != 0 { commands.append("close your eyes") }
        if code & 8 != 0 { commands.append("jump") }
        if code & 16 != 0 { commands.reverse() }
    }
}
