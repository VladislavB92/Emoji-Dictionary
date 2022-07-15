//
//  EmojiDetailView.swift
//  Emoji-dictionary
//
//  Created by Vladislavs Buzinskis on 15/07/2022.
//

import SwiftUI

struct EmojiDetailView: View {
    
    var emoji: Emoji
    
    var body: some View {
        VStack {
            Text(emoji.symbol)
                .font(.system(size: 200))
            Text(emoji.definition)
            Text(
                String(repeating: "⭐️", count: emoji.rating)
            )
            .padding()
            .font(.system(size: 30))
        }
    }
}

struct EmojiDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiDetailView(
            emoji: Emoji(
                id: UUID(),
                symbol: "🌞",
                definition: "Sun with facial features",
                rating: 7
            )
        )
    }
}
