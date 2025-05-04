//
//  MutliSelectView.swift
//  WineScoreCards
//
//  Created by Stephan Takacs on 5/3/25.
//

import SwiftUI

struct MultiSelectView: View {
    let title: String
    let options: [String]
    @Binding var selections: Set<String>

    var body: some View {
        List(options, id: \.self) { option in
            Button(action: {
                // toggle selection
                if selections.contains(option) {
                    selections.remove(option)
                } else {
                    selections.insert(option)
                }
            }) {
                HStack {
                    Text(option)
                    Spacer()
                    if selections.contains(option) {
                        Image(systemName: "checkmark")
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
        .navigationTitle(title)
    }
}
