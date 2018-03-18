

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    var controller:ViewController?
    
    override func setUp() {
        super.setUp()
        controller = ViewController()
    }
    
    override func tearDown() {
        controller = nil
        super.tearDown()
    }
    
    func testShouldRemoveInitialZero() {
        XCTAssertEqual(controller!.concatenate(initialText: "0", character: "1"), "1")
    }
    
    func testShouldRetainOldValues() {
        XCTAssertEqual(controller!.concatenate(initialText: "1203", character: "4"), "12034")
    }
    
    func testShouldConcatenateZero() {
        XCTAssertEqual(controller!.concatenate(initialText: "1", character: "0"), "10")
    }
    
    func testShouldConcatenatePoint() {
        XCTAssertEqual(controller!.concatenatePoint(initialText: "1"), "1.")
    }
    
    func testShouldNotConcatenateMoreThanOnePoint() {
        XCTAssertEqual(controller!.concatenatePoint(initialText: "1.1"), "1.1")
    }

    func testShouldConcatenateMinusWhenTextIsPositive() {
        XCTAssertEqual(controller!.concatenateSign(initialText: "1"), "-1")
    }

    func testShouldRemoveMinusWhenTextIsNegative() {
        XCTAssertEqual(controller!.concatenateSign(initialText: "-1"), "1")
    }

    func testShouldNotConcatenateMinusWhenIsZero() {
        XCTAssertEqual(controller!.concatenateSign(initialText: "0"), "0")
    }

    func testShouldReturnPercent() {
        XCTAssertEqual(controller!.percent(number:150), 1.5)
    }

    func testShouldCalculateSum() {
        XCTAssertEqual(controller!.calculateOperation(first: 2.5, second: 1.2, op: "+"), 3.7)
    }

    func testShouldCalculateDifference() {
        XCTAssertEqual(controller!.calculateOperation(first: 2.5, second: 1.2, op: "-"), 1.3)
    }

    func testShouldCalculateMultiplication() {
        XCTAssertEqual(controller!.calculateOperation(first: 5.5, second: 2, op: "*"), 11.0)
    }

    func testShouldCalculateDivision() {
        XCTAssertEqual(controller!.calculateOperation(first: 10, second: 2, op: "/"), 5.0)
    }

}
