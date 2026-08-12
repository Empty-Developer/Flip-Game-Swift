//
//  ViewController.swift
//  Concentration
//
//  Created by Valera on 11.08.2026.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = ConcentrationGame(numberOfPairsOfCards: (buttonCollection.count + 1) / 2)
    
    var touches = 0 {

        // observer
        didSet {
            touchLabel.text = "Touches: \(touches)"
        }
    }
    
    var collectionEmoji = ["🌽", "🙈", "😭", "🇬🇧", "❤️", "🥶", "🫪", "🫵", "🐥", "😔", "👿", "💅", "💀", "🫥", "👨🏽‍🔬", "✌️",]
    
    // serch emoji
    var emojiDictionary = [Int: String]()
    
    func emojiIdentifier(for card: Card) -> String {
        if emojiDictionary[card.identifier] == nil {
            let randomIndex = Int(arc4random_uniform(UInt32(collectionEmoji.count)))
            emojiDictionary[card.identifier] = collectionEmoji.remove(at: randomIndex)
        }
        return emojiDictionary[card.identifier] ?? "?"
    }
    
    func upadateViewFromModal() {
        // the buttons indexs must match the cards indexs
        for index in buttonCollection.indices {
            let button = buttonCollection[index]
            let card = game.cards[index]
            
            if card.isFaceUp {
                button.setTitle(emojiIdentifier(for: card), for: .normal)
                button.backgroundColor = UIColor.white
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatched ? UIColor.white : UIColor.blue
            }
        }
    }
    
    @IBOutlet var buttonCollection: [UIButton]!
    
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        
        if let buttonIndex = buttonCollection.firstIndex(of: sender) {
            
//            flipButton(emoji: collectionEmoji[buttonIndex], button: sender)
            game.chooseCard(at: buttonIndex)
            upadateViewFromModal()
        }
        
    }
    
    @IBOutlet weak var touchLabel: UILabel!
    
}

