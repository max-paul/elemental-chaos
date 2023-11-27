//
//  ContentView.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/26/23.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Open Game Manager", destination: GameManagerView())
                    .padding()
            }
            .navigationTitle("Home")
        }
    }
}
