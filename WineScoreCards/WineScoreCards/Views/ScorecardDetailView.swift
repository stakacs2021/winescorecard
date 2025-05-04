// WineScorecard/Views/ScorecardDetailView.swift

import SwiftUI

struct ScorecardDetailView: View {
    let card: Scorecard

    var body: some View {
        Form {
            Section("Wine Info") {
                Text(card.wineName)
            }

            Section("Red Fruits") {
                if card.redFruits.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.redFruits).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Citrus") {
                if card.citrus.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.citrus).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Melon") {
                if card.melon.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.melon).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Florals") {
                if card.florals.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.florals).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Herbal / Earthy") {
                if card.herbalEarthy.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.herbalEarthy).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Acidity") {
                if card.acidity.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.acidity).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Body") {
                if card.body.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.body).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Finish – Flavors") {
                if card.finishFlavors.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.finishFlavors).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Taste") {
                if card.taste.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.taste).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Unexpected Flavors") {
                if card.unexpectedFlavors.isEmpty {
                    Text("None selected").foregroundColor(.secondary)
                } else {
                    ForEach(Array(card.unexpectedFlavors).sorted(), id: \.self) { item in
                        Text("• \(item)")
                    }
                }
            }

            Section("Additional Notes") {
                if card.additionalNotes.isEmpty {
                    Text("None").foregroundColor(.secondary)
                } else {
                    Text(card.additionalNotes)
                }
            }
        }
        .navigationTitle(card.wineName.isEmpty ? "Scorecard" : card.wineName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ScorecardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScorecardDetailView(card: Scorecard(
                wineName: "Sample Wine",
                redFruits: ["Cherry", "Raspberry"],
                citrus: ["Orange Zet"],
                melon: ["Watermelon"],
                florals: ["Rose Petals"],
                herbalEarthy: ["Hint of Minerality"],
                acidity: ["Makes your mouth water?"],
                body: ["Light and Refreshing"],
                finishFlavors: ["Fade Quickly"],
                taste: ["Bright", "Smooth"],
                unexpectedFlavors: ["Salinity"],
                additionalNotes: "Really nice balance of fruit and minerality."
            ))
        }
    }
}
