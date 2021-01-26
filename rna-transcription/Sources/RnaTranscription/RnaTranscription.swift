struct Nucleotide {
    let strand: String

    init(_ strand: String) {
        self.strand = strand
    }

    func complementOfDNA() throws -> String {
        return try strand.map({
            switch $0 {
            case "C":
                return "G"

            case "G":
                return "C"

            case "A":
                return "U"

            case "T":
                return "A"

            default:
                throw TranscriptionError.invalidNucleotide(message: "\($0) is not a valid Nucleotide")
            }
        }).joined()
    }
}

enum TranscriptionError: Error {
    case invalidNucleotide(message: String)
}
