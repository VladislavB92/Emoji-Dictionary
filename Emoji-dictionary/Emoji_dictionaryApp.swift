//
//  Emoji_dictionaryApp.swift
//  Emoji-dictionary
//
//  Created by Vladislavs Buzinskis on 15/07/2022.
//

import SwiftUI

@main
struct Emoji_dictionaryApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                EmojiListView()
                    .tabItem {
                        Label("List", systemImage: "list.dash")
                    }
                /// systemImage is an icon that will be displayed for tab item
                EmojiGridView()
                    .tabItem {
                        Label("Grid", systemImage: "circle.grid.2x2")
                    }
                
            }
        }
    }
}


