import Foundation

struct Grains {
    static let total = UInt64.max

    static func square(_ number: Int) throws -> UInt64 {
        guard number < 65 else {
            throw GrainsError.inputTooHigh(errorMessage(number: number))
        }
        guard number > 0 else {
            throw GrainsError.inputTooLow(errorMessage(number: number))
        }

        if number == 1 {
            return 1
        } else {
            return try square(number - 1) * 2
        }
    }

    private static func errorMessage(number: Int) -> String {
        "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)"
    }

    enum GrainsError: Error {
        case inputTooHigh(_ message: String)
        case inputTooLow(_ message: String)
    }
}
