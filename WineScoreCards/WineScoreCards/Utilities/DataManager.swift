//
//  DataManager.swift
//  WineScoreCards
//
//  Created by Stephan Takacs on 5/3/25.
//

import Foundation

enum DataManager {
    private static let filename = "scorecards.json"

    private static var fileURL: URL {
        let docs = FileManager.default.urls(
            for: .documentDirectory, in: .userDomainMask
        ).first!
        return docs.appendingPathComponent(filename)
    }

    static func load() -> [Scorecard] {
        guard let data = try? Data(contentsOf: fileURL) else { return [] }
        return (try? JSONDecoder().decode([Scorecard].self, from: data)) ?? []
    }

    static func save(_ cards: [Scorecard]) {
        guard let data = try? JSONEncoder().encode(cards) else { return }
        try? data.write(to: fileURL, options: .atomic)
    }
}
