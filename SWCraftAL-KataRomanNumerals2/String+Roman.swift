//
//  String+Roman.swift
//  SWCraftAL-KataRomanNumerals2
//
//  Created by José Servet Font on 5/7/16.
//  Copyright © 2016 ByBDesigns. All rights reserved.
//

import Foundation

extension String {
	
	func convertChar(char: String) -> Int {
		let charMap: [String: Int] = ["I": 1,
		                              "V": 5,
		                              "X": 10,
		                              "L": 50,
		                              "C": 100,
		                              "D": 500,
		                              "M": 1000]
		
		return charMap[char]!
	}
	
	func signum(value: Int) -> Int {
		if value >= 0 {
			return 1
		} else {
			return -1
		}
	}
	
	func zero(value: Int) -> Int {
		if value == 0 {
			return 0
		} else {
			return 1
		}
	}
	
	func nonzero(value: Int) -> Int {
		return zero(value) ^ 1
	}
	
	var fromRomanNumeral: Int {
		
		var buffer = 0
		var accumulatedValue = 0
		
		var index = self.startIndex
		
		repeat {
			let singleChar = String(self[index])
			let currentValue = convertChar(singleChar)
			
			buffer += accumulatedValue * signum(accumulatedValue - currentValue)
			buffer += currentValue * zero(accumulatedValue)
			
			accumulatedValue = currentValue * nonzero(accumulatedValue)
			
			index = index.successor()
		} while index != self.endIndex
		
		buffer += accumulatedValue
		
		return buffer
	}
}
