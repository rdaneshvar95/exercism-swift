struct SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
        return (0..<limit).filter { number -> Bool in
            inMultiples.contains(where: { number.isMultiple(of: $0) })
        }.reduce(0, +)
    }
}
