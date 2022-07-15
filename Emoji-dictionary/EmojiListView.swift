//
//  EmojiListView.swift
//  Emoji-dictionary
//
//  Created by Vladislavs Buzinskis on 15/07/2022.
//

import SwiftUI

struct EmojiListView: View {
    
    var emojis = [
        Emoji(id: UUID(), symbol: "😄"),
        Emoji(id: UUID(), symbol: "😇"),
        Emoji(id: UUID(), symbol: "💩")
    ]
    
    var body: some View {
        List(emojis) {
            listedEmoji in Text(listedEmoji.symbol)
        }
    }
}

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
}

struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}
 
