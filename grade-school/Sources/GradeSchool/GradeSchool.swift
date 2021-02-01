struct GradeSchool {
    private var dbRoster: [Int: [String]] = [:]
    private var dbSortedRoster: [Int: [String]] = [:]

    var roster: [Int: [String]] {
        return dbRoster
    }

    var sortedRoster:[Int: [String]] {
        return dbSortedRoster
    }

    mutating func addStudent(_ name: String, grade: Int) {
        dbRoster[grade, default: []].append(name)
        dbSortedRoster[grade] = dbRoster[grade]!.sorted()
    }

    func studentsInGrade(_ grade: Int) -> [String] {
        return dbRoster[grade, default: []]
    }
}
