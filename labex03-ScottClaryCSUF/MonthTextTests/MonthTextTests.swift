import XCTest
@testable import MonthText

class MonthTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testPropertyExists()
    {
        let theMonth = Month()
        XCTAssert(theMonth.number == theMonth.number)
    }
    
    func testAlwaysUnderTwelve()
    {
        var theMonth = Month(6)
        theMonth.number = -1
        XCTAssert(theMonth.number == 6)
        theMonth.number = 45
        XCTAssert(theMonth.number == 6)
    }
    
    func testMonthName()
    {
        var theMonth = Month(1)
        XCTAssert(theMonth.name == "January")
        theMonth.number = 12
        XCTAssert(theMonth.name == "December")
    }
    // Provide your unit tests here

    func testCustomInit()
    {
        let theMonth = Month()
        XCTAssert(theMonth.number == 1)
    }
    
    
    func testInit()
    {
        var theMonth = Month(10)
        XCTAssert(theMonth.number == 10)
        theMonth = Month(44)
        XCTAssert(theMonth.number == 1)
    }
}
