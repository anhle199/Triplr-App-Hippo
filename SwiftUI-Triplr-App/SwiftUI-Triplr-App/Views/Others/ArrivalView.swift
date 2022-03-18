//
//  ArrivalView.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 19/03/2022.
//

import SwiftUI

struct ArrivalView: View {
    
    let image: String
    let star: String
    let place: String
    
    var body: some View {
        HStack(spacing: 10) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 100)
            
            Spacer()
                .frame(width: 20, alignment: .center)
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text(star)
                        .foregroundColor(.primaryColor)
                        .font(.primary(.medium))
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
                
                Text(place)
                    .font(.primary(.regular, size: 12))
                    .foregroundColor(.darkText)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineSpacing(4)
            }
        }
        .background(Color.primaryLight)
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

struct ArrivalView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TripView()
        }
        .navigationViewStyle(.stack)
    }
}
