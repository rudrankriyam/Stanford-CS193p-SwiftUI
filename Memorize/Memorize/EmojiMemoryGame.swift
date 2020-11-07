//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Rudrank Riyam on 31/10/20.
//  Copyright © 2020 Rudrank Riyam. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🥺", "😊", "😍", "🤭"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
