//
//  SplashModel.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import Foundation

struct SplashModel: Hashable {
    let imageName: String
    let title: String
    let description: String
    
    static let sampleData: [SplashModel] = [
        .init(
            imageName: "splash.1",
            title: "Connect with tourists",
            description: "Connect with people of faith locally & globally. Discover Chat & Engage."
        ),
        .init(
            imageName: "splash.2",
            title: "Discover new things",
            description: "Explore new things through our app. Discover initiary & other stuffs."
        ),
        .init(
            imageName: "splash.3",
            title: "Share your moments",
            description: "Share your trip initiary with others. Let's make the travel fun & enjoyable."
        )
    ]
}
