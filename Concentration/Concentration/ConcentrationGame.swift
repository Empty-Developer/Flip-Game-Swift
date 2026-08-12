//
//  ConcentrationGame.swift
//  Concentration
//
//  Created by Valera on 12.08.2026.
//

import Foundation

class ConcentrationGame {
    var cards = [Card]()
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int){
        if !cards[index].isMatched {
            if let matchingIndex = indexOfOneAndOnlyFaceUpCard, matchingIndex != index {
                if cards[matchingIndex].identifier == cards[index].identifier {
                    cards[matchingIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
            } else {
                for flipDown in cards.indices {
                    cards[flipDown].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
            }
        }
    }
    
    
    init(numberOfPairsOfCards: Int) {
        for i in 1...numberOfPairsOfCards {
            
            let j = Int(arc4random_uniform(UInt32(numberOfPairsOfCards - i))) + i
            
            var card = Card()
            cards += [card, card]
            
            let randomized = cards.shuffled()
            
            cards = randomized
            
        }
    }
}
