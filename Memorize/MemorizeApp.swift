//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Evgeniia Maksimova on 07.12.2022.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
