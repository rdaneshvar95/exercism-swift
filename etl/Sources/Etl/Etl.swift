struct ETL {
    static func transform(_ old: [Int: [String]]) -> [String: Int] {
        var new: [String: Int] = [:]
        old.forEach { point, letters in
            letters.forEach { new[$0.lowercased()] = point }
        }
        return new
    }
}
