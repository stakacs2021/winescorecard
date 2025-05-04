// WineScorecard/Views/ScorecardFormView.swift

import SwiftUI
import UIKit

struct ScorecardFormView: View {
    @EnvironmentObject var vm: ScorecardViewModel

    var body: some View {
        NavigationView {
            Form {
                Section("Wine Info") {
                    TextField("Wine Name", text: $vm.current.wineName)

                    VStack(alignment: .leading, spacing: 6) {
                        Text("Color Hue").font(.subheadline).bold()

                        Slider(
                            value: $vm.current.colorIndex,
                            in: 0...2
                        )
                        .accessibility(value: Text(vm.current.colorLabel))

                        HStack {
                            Text("Pale Blush")
                            Spacer()
                            Text("Vibrant Salmon")
                            Spacer()
                            Text("Watermelon Pink")
                        }
                        .font(.caption)
                        .foregroundColor(.secondary)

                        Text(vm.current.colorLabel)
                            .font(.footnote)
                            .foregroundColor(.primary)
                    }
                }

                Section("Red Fruits") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Red Fruits",
                            options: ["Strawberry", "Raspberry", "Cherry"],
                            selections: $vm.current.redFruits
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.redFruits.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Citrus") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Citrus",
                            options: ["Pink Grapefruit", "Orange Zet"],
                            selections: $vm.current.citrus
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.citrus.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Melon") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Melon",
                            options: ["Watermelon", "Cantaloupe"],
                            selections: $vm.current.melon
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.melon.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Florals") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Florals",
                            options: ["Rose Petals", "Orange Blossom"],
                            selections: $vm.current.florals
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.florals.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Herbal / Earthy") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Herbal / Earthy",
                            options: ["Provincial Herbs (thyme, lavender...)", "Hint of Minerality", "White Pepper"],
                            selections: $vm.current.herbalEarthy
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.herbalEarthy.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Acidity") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Acidity",
                            options: ["Makes your mouth water?"],
                            selections: $vm.current.acidity
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.acidity.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Body") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Body",
                            options: ["Light and Refreshing", "Fuller and Textured"],
                            selections: $vm.current.body
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.body.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Finish – Flavors") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Finish – Flavors",
                            options: ["Fade Quickly", "Lingering"],
                            selections: $vm.current.finishFlavors
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.finishFlavors.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Taste") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Taste",
                            options: ["Sweet", "Dry", "Zippy", "Bright", "Smooth", "Soft"],
                            selections: $vm.current.taste
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.taste.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Unexpected Flavors") {
                    NavigationLink(
                        destination: MultiSelectView(
                            title: "Unexpected Flavors",
                            options: ["Herbs", "Spices", "Salinity"],
                            selections: $vm.current.unexpectedFlavors
                        )
                    ) {
                        HStack {
                            Text("Select…")
                            Spacer()
                            Text(vm.current.unexpectedFlavors.sorted().joined(separator: ", "))
                                .foregroundColor(.secondary)
                                .lineLimit(1)
                        }
                    }
                }

                Section("Additional Notes") {
                    TextEditor(text: $vm.current.additionalNotes)
                        .frame(minHeight: 100)
                }

                Button("Save Scorecard") {
                    // Dismiss keyboard
                    UIApplication.shared.sendAction(
                        #selector(UIResponder.resignFirstResponder),
                        to: nil, from: nil, for: nil
                    )
                    vm.saveCurrent()
                }
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .center)
            }
            .navigationTitle("New Scorecard")
        }
    }
}
