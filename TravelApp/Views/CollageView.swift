//
//  CollageView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct CollageView: View {
    
    let images: [String]
    
    var body: some View {
        HStack {
            Image(images[0])
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width * 0.6)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack {
                Image(images[1])
                    .resizable()
                    .scaledToFill()
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                ZStack {
                    Image(images[2])
                        .resizable()
                        .scaledToFill()
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    Color.black
                        .opacity(0.3)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    Text("\(images.count - 2)+")
                        .foregroundColor(.white)
                        .font(.primary(.semiBold, size: 20))
                }
            }
        }
        .padding()
    }
}

struct CollageView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
