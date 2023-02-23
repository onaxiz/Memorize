//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Evgeniia Maksimova on 07.12.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
