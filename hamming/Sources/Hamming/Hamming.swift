struct Hamming {
    static func compute(_ origin: String, against: String) -> Int? {
        guard origin.count == against.count else { return nil }

        return zip(origin, against).lazy.filter(!=).count
    }
}
