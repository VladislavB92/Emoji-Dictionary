//
//  EmojiListView.swift
//  Emoji-dictionary
//
//  Created by Vladislavs Buzinskis on 15/07/2022.
//

import SwiftUI

struct EmojiListView: View {
    
    var body: some View {
        NavigationView {
            List(emojis) { listedEmoji in
                NavigationLink(
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


struct EmojiListView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiListView()
    }
}

