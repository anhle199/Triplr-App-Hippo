//
//  ActivityView.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 19/03/2022.
//

import SwiftUI

struct ActivityView: View {
    
    enum `Type`: String {
        case flight, car, sleep, eating
        
        var title: String {
            switch self {
            case .flight:
                return "Flight"
            case .car:
                return "Car Travel"
            case .sleep:
                return "Hotel"
            case .eating:
                return "Eating"
            }
        }
        
        var image: String { "ic.\(rawValue)" }
        
        var backgroundColor: Color {
            switch self {
            case .flight:
                return .primaryLight
            case .car:
                return .blue.opacity(0.2)
            case .sleep:
                return .primaryRed.opacity(0.25)
            case .eating:
                return .primaryGreen.opacity(0.25)
            }
        }
        
        var titleColor: Color {
            switch self {
            case .flight:
                return .primaryColor
            case .car:
                return .blue
            case .sleep:
                return .primaryRed
            case .eating:
                return .primaryGreen
            }
        }
    }
    
    let type: `Type`
    let time: String
    let place: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Text(time)
                .font(.primary(.semiBold, size: 13))
                .frame(width: 65, height: 40, alignment: .center)
                .padding(.leading, 4)
            
            Image(type.image)
                .resizable()
                .foregroundColor(.white)
                .frame(width: 40, height: 40)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(type.title)
                    .font(.primary(.medium))
                    .foregroundColor(type.titleColor)
                
                Text(place)
                    .font(.primary(.regular, size: 12))
                    .foregroundColor(.darkText)
                    .lineSpacing(4)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(8)
            .background(type.backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
    
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TripView()
        }
        .navigationViewStyle(.stack)
    }
}
