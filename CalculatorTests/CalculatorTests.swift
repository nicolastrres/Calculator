

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

}
