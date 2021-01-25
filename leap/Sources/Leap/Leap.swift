struct Year {
    let isLeapYear: Bool

    init(calendarYear: Int) {
        isLeapYear = calendarYear.isMultiple(of: 4) && (!calendarYear.isMultiple(of: 100) || calendarYear.isMultiple(of: 400))
    }
}
