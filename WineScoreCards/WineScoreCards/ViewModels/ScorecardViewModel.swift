//
//  ScorecardViewModel.swift
//  WineScoreCards
//
//  Created by Stephan Takacs on 5/3/25.
//

import SwiftUI

final class ScorecardViewModel: ObservableObject {
    @Published var current = Scorecard()
    @Published private(set) var saved: [Scorecard] = []

    init() {
        saved = DataManager.load()
    }

    func saveCurrent() {
        saved.append(current)
        DataManager.save(saved)
        current = Scorecard()  // reset to blank
    }
    
    func delete(at offsets: IndexSet) {
        saved.remove(atOffsets: offsets)
        DataManager.save(saved)
    }
}
