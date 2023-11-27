//
//  Home.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/27/23.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @ObservedObject var cardManager = CardManager.shared

    var body: some View {
        NavigationView {
            VStack {
                
                Text("Welcome to Elemental Chaos!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                    .multilineTextAlignment(.center) // Center the text when it wraps to two lines


                Text("Hello, \(cardManager.currentUser.userName)!")
                    .font(.headline)
                    .padding()

                NavigationLink(destination: GameManagerView()) {
                    Text("Explore Collection")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(12)
                }
                .padding()
            }
            .padding()
        }
        .navigationTitle("Home")
    }
}

