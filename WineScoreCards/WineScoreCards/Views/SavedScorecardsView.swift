// WineScorecard/Views/SavedScorecardsView.swift

import SwiftUI

struct SavedScorecardsView: View {
    @EnvironmentObject var vm: ScorecardViewModel

    var body: some View {
        NavigationView {
            List {
                // Use the vm.saved array directly, identify each element by its .id
                ForEach(vm.saved, id: \.id) { card in
                    NavigationLink(destination: ScorecardDetailView(card: card)) {
                        Text(card.wineName.isEmpty ? "Untitled Wine" : card.wineName)
                            .font(.headline)
                    }
                }
                .onDelete(perform: vm.delete)
            }
            .navigationTitle("Saved Scorecards")
        }
    }
}

struct SavedScorecardsView_Previews: PreviewProvider {
    static var previews: some View {
        SavedScorecardsView()
            .environmentObject(ScorecardViewModel())
    }
}
