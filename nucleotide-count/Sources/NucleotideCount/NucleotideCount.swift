struct DNA {
    var nucleotides = ["T": 0, "A": 0, "C": 0, "G": 0]

    init?(strand: String) {
        for char in strand {
            guard ["T", "A", "C", "G"].contains(char) else { return nil }

            nucleotides[String(char)]! += 1
        }
    }

    func count(_ nucleotide: String) -> Int {
        return nucleotides[nucleotide] ?? 0
    }

    func counts() -> [String: Int] {
        return nucleotides
    }
}
