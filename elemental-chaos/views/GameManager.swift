//
//  GameManager.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/27/23.
//
//
//  GameManager.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/27/23.
//

import SwiftUI

struct GameManagerView: View {
    @StateObject private var cardManager = CardManager.shared
    @State private var isShowingCollection = false
    @State private var collectedCardCount = 0

    var body: some View {
        VStack {
            Text("Game Manager")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            Text("Collected Cards: \(collectedCardCount)")
                .padding()

            Button("Unlock Card") {
                cardManager.unlockPack()
                collectedCardCount = cardManager.currentUser.collectedCards.count
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            .cornerRadius(8)

            Button("Show Collection") {
                isShowingCollection.toggle()
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            .sheet(isPresented: $isShowingCollection) {
                NavigationView {
                    UserCollectionView(cardManager: cardManager)
                }
            }
        }
        .onAppear {
            // Initialize collectedCardCount with the current count of collected cards
            collectedCardCount = cardManager.currentUser.collectedCards.count
        }
    }
}
