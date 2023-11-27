//
//  GameManager.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/26/23.
//

import Foundation

class CardManager: ObservableObject {
    static let shared = CardManager()
    
    private let userDefaults = UserDefaults.standard
    private let cardRarities = ["Common", "Rare", "Epic", "Legendary"]
    
    private init() {}
    
    var currentUser: User {
        get {
            if let userData = userDefaults.data(forKey: "user") {
                do {
                    let user = try JSONDecoder().decode(User.self, from: userData)
                    return user
                } catch {
                    print("Error decoding user data: \(error)")
                }
            }
            return User()
        }
        set {
            if let encoded = try? JSONEncoder().encode(newValue) {
                userDefaults.set(encoded, forKey: "user")
            } else {
                print("Error encoding user data")
            }
        }
    }
    
    func unlockPack() {
        // Simulate unlocking a pack and adding cards to the user's collection
        let packSize = 3 // Number of cards in a pack
        var newCards: [Card] = []
        
        for _ in 1...packSize {
            if let randomCard = generateRandomCard() {
                newCards.append(randomCard)
            }
        }
        
        currentUser.collectedCards += newCards
        
        saveUserData()
    }
    
    private func generateRandomCard() -> Card? {
        guard let randomName = generateRandomName() else { return nil }
        
        let randomRarity = cardRarities.randomElement() ?? "Common"
        let newCard = Card(name: randomName, rarity: randomRarity)
        
        return newCard
    }
    
    private func generateRandomName() -> String? {
        // Simulate generating a random card name
        let cardNames = ["Card1", "Card2", "Card3", "Card4", "Card5"]
        return cardNames.randomElement()
    }
    
    private func saveUserData() {
        currentUser = currentUser
    }
}
