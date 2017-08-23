//
//  Person.swift
//  NameGame
//
//  Created by Ilias Basha on 8/23/17.
//  Copyright © 2017 WillowTree Apps. All rights reserved.
//

import Foundation

struct Person {
    
    private static let firstNameKey = "firstName"
    private static let lastNameKey = "lastName"
    private static let imageURLKey = "url"
    
    let firstName: String
    let lastName: String
    let imageURL: String
    
    
    
    var fullName: String {
        return ("\(firstName) \(lastName)")
    }
    
    
    
    init?(dictionary: [String:Any]) {
        guard let firstName = dictionary[Person.firstNameKey] as? String,
            let lastName = dictionary[Person.lastNameKey] as? String,
            let imageURL = dictionary[Person.imageURLKey] as? String else { return nil }
        
        
        self.firstName = firstName
        self.lastName = lastName
        self.imageURL = imageURL
    }
    
}