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
	
	func addString(char1: String, to char2: String) -> Int {
		return convertChar(char1) + convertChar(char2)
	}
	
	func subtractString(subtractor: String, from value: String) -> Int {
		return convertChar(value) - convertChar(subtractor)
	}
	
	var fromRomanNumeral: Int {
		
		let specialChars = ["I", "X", "C"]
		
		var buffer = 0
		var accumulatedValue = 0
		
		var index = self.startIndex
		
		repeat {
			let singleChar = String(self[index])
			let currentValue = convertChar(singleChar)
			
			if accumulatedValue == 0 {
				if specialChars.contains(singleChar) {
					accumulatedValue = currentValue
				} else {
					buffer += currentValue
				}
			} else {
				if accumulatedValue < currentValue {
					buffer -= accumulatedValue
					buffer += currentValue
				} else {
					buffer += accumulatedValue
					buffer += currentValue
				}
				
				accumulatedValue = 0
			}
			
			index = index.successor()
		} while index != self.endIndex
		
		if accumulatedValue != 0 {
			buffer += accumulatedValue
		}
		
		return buffer
	}
}
