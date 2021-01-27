import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        let trimmed = input.trimmingCharacters(in: .whitespaces)

        if trimmed.isEmpty {
            return "Fine. Be that way!"
        } else if trimmed.contains(where: \.isCased) && !trimmed.contains(where: \.isLowercase) {
            return "Whoa, chill out!"
        } else if trimmed.last == "?" {
            return "Sure."
        } else {
            return "Whatever."
        }
    }
}
