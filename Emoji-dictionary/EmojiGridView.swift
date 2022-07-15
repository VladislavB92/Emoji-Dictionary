//
//  EmojiGridView.swift
//  Emoji-dictionary
//
//  Created by Vladislavs Buzinskis on 15/07/2022.
//

import SwiftUI

struct EmojiGridView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(emojis) { listedEmoji in
                        NavigationLink(
                            destination: EmojiDetailView(
                                emoji: listedEmoji
                            )
                        ) {
                            Text(listedEmoji.symbol)
                                .font(.system(size: 90))
                        }
                    }
                    .navigationTitle(
                        "Emoji Dictionary - \(emojis.count)"
                    )
                }
            }
        }
        
    }
}
 
struct EmojiGridView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiGridView()
    }
}

