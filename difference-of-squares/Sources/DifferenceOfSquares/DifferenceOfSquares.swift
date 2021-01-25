struct Squares {
    let differenceOfSquares: Int
    let squareOfSum: Int
    let sumOfSquares: Int

    init(_ number: Int) {
        var sum = 0
        var sumOfSquares = 0

        for i in 1...number {
            sum += i
            sumOfSquares += i * i
        }

        self.sumOfSquares = sumOfSquares
        self.squareOfSum = sum * sum
        self.differenceOfSquares = squareOfSum - sumOfSquares
    }
}
