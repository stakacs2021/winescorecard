import SwiftUI

@main
struct WineScorecardApp: App {
    @StateObject private var vm = ScorecardViewModel()

    var body: some Scene {
        WindowGroup {
            TabView {
                ScorecardFormView()
                    .tabItem { Label("New", systemImage: "plus.square") }
                SavedScorecardsView()
                    .tabItem { Label("Saved", systemImage: "book") }
            }
            .environmentObject(vm)
        }
    }
}
