//
//  User.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/26/23.
//

import Foundation
import UIKit

struct User: Codable {
    var collectedCards: [Card] = []
    var unlockedPacks: Int = 0
    var userName: String {
            return UIDevice.current.name
        }
}
