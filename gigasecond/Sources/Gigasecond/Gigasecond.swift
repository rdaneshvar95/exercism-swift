import Foundation

struct Gigasecond {
    static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        formatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        return formatter
    }()

    let description: String

    init?(from: String) {
        guard var date = Gigasecond.formatter.date(from: from) else { return nil }

        date.addTimeInterval(1_000_000_000)

        description = Gigasecond.formatter.string(from: date)
    }
}
