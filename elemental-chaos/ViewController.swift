//
//  ViewController.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/26/23.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Example: Unlocking a pack
        CardManager.shared.unlockPack()
        
        // Example: Retrieving user data
        let currentUser = CardManager.shared.currentUser
        print("Unlocked Packs: \(currentUser.unlockedPacks)")
        print("Collected Cards: \(currentUser.collectedCards)")
    }
}
