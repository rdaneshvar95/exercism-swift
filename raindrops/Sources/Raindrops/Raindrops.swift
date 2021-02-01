struct Raindrops {

    let sounds: String

    init(_ number: Int) {
        var sounds = ""

        if number.isMultiple(of: 3) {
            sounds += "Pling"
        }

        if number.isMultiple(of: 5) {
            sounds += "Plang"
        }

        if number.isMultiple(of: 7) {
            sounds += "Plong"
        }

        self.sounds = sounds.isEmpty ? "\(number)" : sounds
    }
}
