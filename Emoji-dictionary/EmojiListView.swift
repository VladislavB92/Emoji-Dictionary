//
//  EmojiListView.swift
//  Emoji-dictionary
//
//  Created by Vladislavs Buzinskis on 15/07/2022.
//

import SwiftUI

struct EmojiListView: View {
    
    var emojis = [
        Emoji(
            id: UUID(),
            symbol: "😄",
            definition: "Laughing face",
            rating: 4
        ),
        Emoji(
            id: UUID(),
            symbol: "😇",
            definition: "Inocent smile",
            rating: 3
        ),
        Emoji(
            id: UUID(),
            symbol: "💩",
            definition: "Just a pieace of shit",
            rating: 10
        )
    ]
    
    var body: some View {
        NavigationView {
            List(emojis) {
                listedEmoji in NavigationLink(
                    destination: EmojiDetailView(
                        emoji: listedEmoji
                    )
                ) {
                    Text(
                        "\(listedEmoji.symbol) - \(listedEmoji.definition)"
                    )
                }
            }
            .navigationTitle(
                "Emoji Dictionary - \(emojis.count)"
            )
        }
        
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
    var definition: String
    var rating: Int
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}

