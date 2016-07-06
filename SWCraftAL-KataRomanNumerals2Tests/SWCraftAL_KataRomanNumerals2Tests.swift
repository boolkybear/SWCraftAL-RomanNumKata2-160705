//
//  SWCraftAL_KataRomanNumerals2Tests.swift
//  SWCraftAL-KataRomanNumerals2Tests
//
//  Created by José Servet Font on 5/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import XCTest
@testable import SWCraftAL_KataRomanNumerals2

class SWCraftAL_KataRomanNumerals2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//    }
//    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
	
	func testOne() {
		XCTAssert("I".fromRomanNumeral == 1)
	}
	
	func testFive() {
		XCTAssert("V".fromRomanNumeral == 5)
	}
	
	func testTen() {
		XCTAssert("X".fromRomanNumeral == 10)
	}
	
	func testFifty() {
		XCTAssert("L".fromRomanNumeral == 50)
	}
	
	func testHundred() {
		XCTAssert("C".fromRomanNumeral == 100)
	}
	
	func testFiveHundred() {
		XCTAssert("D".fromRomanNumeral == 500)
	}
	
	func testThousand() {
		XCTAssert("M".fromRomanNumeral == 1000)
	}
	
	func testTwo() {
		XCTAssert("II".fromRomanNumeral == 2)
	}
	
	func testThree() {
		XCTAssert("III".fromRomanNumeral == 3)
	}
	
	func testSix() {
		XCTAssert("VI".fromRomanNumeral == 6)
	}
	
	func testFour() {
		XCTAssert("IV".fromRomanNumeral == 4)
	}
	
	func testFortyNine() {
		XCTAssert("XLIX".fromRomanNumeral == 49)
	}
	
	func testBig() {
		XCTAssert("MMCMLXXXVIII".fromRomanNumeral == 2988)
	}
	
}
