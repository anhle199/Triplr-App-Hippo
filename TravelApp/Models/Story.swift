//
//  Story.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 17/03/2022.
//

import Foundation

struct Story: Identifiable {
    
    var id: UUID {
        return UUID()
    }
    
    let user: User
    let detail: String?
    
    static let dummies: [Story] = {
        User.dummies.map {
            Story(user: $0, detail: nil)
        }
    }()
    
}
