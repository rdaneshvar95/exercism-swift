extension Sequence {
    func accumulate<T> (_ function: (Element) -> T) -> [T] {
        var result: [T] = []
        for each in self {
            result.append(function(each))
        }
        return result
    }
}
