//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Evgeniia Maksimova on 05.01.2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️",
                "🚓", "🚑", "🚒", "🚐", "🛻", "🚚",
                "🚛", "🚜", "🛴", "🚲", "🛵", "🏍️",
                "🛺", "🚔", "🚍", "🚘", "🚖", "✈️"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
