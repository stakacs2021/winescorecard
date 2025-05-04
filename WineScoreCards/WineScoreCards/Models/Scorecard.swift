// WineScorecard/Models/Scorecard.swift

import Foundation

struct Scorecard: Identifiable, Codable {
    let id: UUID

    var wineName: String

    /// 0 = Pale Blush, 1 = Vibrant Salmon, 2 = Watermelon Pink
    var colorIndex: Double
    var redFruits: Set<String>
    var citrus: Set<String>
    var melon: Set<String>
    var florals: Set<String>
    var herbalEarthy: Set<String>
    var acidity: Set<String>
    var body: Set<String>
    var finishFlavors: Set<String>
    var taste: Set<String>
    var unexpectedFlavors: Set<String>

    var additionalNotes: String

    var colorLabel: String {
        switch Int(colorIndex) {
        case 0: return "Pale Blush"
        case 1: return "Vibrant Salmon"
        default: return "Watermelon Pink"
        }
    }

    init(
        id: UUID = .init(),
        wineName: String = "",
        colorIndex: Double = 1,
        redFruits: Set<String> = [],
        citrus: Set<String> = [],
        melon: Set<String> = [],
        florals: Set<String> = [],
        herbalEarthy: Set<String> = [],
        acidity: Set<String> = [],
        body: Set<String> = [],
        finishFlavors: Set<String> = [],
        taste: Set<String> = [],
        unexpectedFlavors: Set<String> = [],
        additionalNotes: String = ""
    ) {
        self.id = id
        self.wineName = wineName
        self.colorIndex = colorIndex
        self.redFruits = redFruits
        self.citrus = citrus
        self.melon = melon
        self.florals = florals
        self.herbalEarthy = herbalEarthy
        self.acidity = acidity
        self.body = body
        self.finishFlavors = finishFlavors
        self.taste = taste
        self.unexpectedFlavors = unexpectedFlavors
        self.additionalNotes = additionalNotes
    }
}
