//
//  MemoryGameViewModel.swift
//  Memorize
//
//  Created by Sillas Santos on 02/02/23.
//

import Foundation

class MemoryGameViewModel {
    
    static let emojis = ["🚗","🚕","🚓","🚘","🚖"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    private var model: MemoryGame<String> = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
