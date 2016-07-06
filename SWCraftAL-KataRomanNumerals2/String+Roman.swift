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
		let variations = ["IV", "IX", "XL", "XC", "CD", "CM"]
		
		var buffer = 0
		var accumulator = ""
		
		var index = self.startIndex
		
		repeat {
			let singleChar = String(self[index])
			if accumulator.characters.count == 0 {
				if specialChars.contains(singleChar) {
					accumulator = singleChar
				} else {
					buffer += convertChar(singleChar)
				}
			} else {
				let concatenation = accumulator + singleChar
				if variations.contains(concatenation) {
					buffer += subtractString(accumulator, from: singleChar)
				} else {
					buffer += addString(accumulator, to: singleChar)
				}
				
				accumulator = ""
			}
			
			index = index.successor()
		} while index != self.endIndex
		
		if accumulator.characters.count > 0 {
			buffer += convertChar(accumulator)
		}
		
		return buffer
	}
}
