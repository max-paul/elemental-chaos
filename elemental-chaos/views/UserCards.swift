//
//  UserCards.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/27/23.
//

import SwiftUI

struct UserCollectionView: View {
    @ObservedObject var cardManager: CardManager
    @State private var isGameManagerViewPresented = false

    var body: some View {
        VStack {
            // Visual pull tab
            PullTab()

            Text("User Collection")
                .font(.title)
                .fontWeight(.bold)
                .padding()

            List(cardManager.currentUser.collectedCards) { card in
                Text(card.name)
            }
        }
        .sheet(isPresented: $isGameManagerViewPresented) {
            GameManagerView()
        }
    }
}

struct PullTab: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(width: 40, height: 5)
            .foregroundColor(Color.gray)
            .padding(.vertical, 5)
    }
}
