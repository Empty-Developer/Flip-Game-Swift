//
//  Card.swift
//  Concentration
//
//  Created by Valera on 12.08.2026.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    
    /**
     @description - create functional for generate
     number all button(cards)
     */
    static var identifierNumber = 0
    
    static func identifierGenerator() -> Int{
        identifierNumber += 1
        return identifierNumber
    }
    
    init() {
        self.identifier = Card.identifierGenerator()
    }
}
