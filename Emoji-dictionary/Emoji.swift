//
//  File.swift
//  Emoji-dictionary
//
//  Created by Vladislavs Buzinskis on 15/07/2022.
//

import Foundation

struct Emoji: Identifiable {
    var id: UUID
    var symbol: String
    var definition: String
    var rating: Int
}

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
    ),
    Emoji(
        id: UUID(),
        symbol: "🌎",
        definition: "Earth",
        rating: 7
    ),
    Emoji(
        id: UUID(),
        symbol: "👩‍💻",
        definition: "Developer with Mac",
        rating: 9
    ),
    Emoji(
        id: UUID(),
        symbol: "🧑🏻‍🎨",
        definition: "Artist",
        rating: 2
    )
]
