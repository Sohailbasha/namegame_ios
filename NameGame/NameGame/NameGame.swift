//
//  NameGame.swift
//  NameGame
//
//  Created by Erik LaManna on 11/7/16.
//  Copyright © 2016 WillowTree Apps. All rights reserved.
//

import Foundation

protocol NameGameDelegate: class {
    // use delegate to get value from loadGameData?
}

class NameGame {

    weak var delegate: NameGameDelegate?

    let numberPeople = 6


    // Load JSON data from API
    func loadGameData(completion: @escaping () -> Void) {
        PersonController.sharedInstance.fetchPeople { (people) in
            
        }
    }
}
