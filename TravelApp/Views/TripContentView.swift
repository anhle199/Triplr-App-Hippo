//
//  TripContentView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct TripContentView: View {
    
    let trip: Trip
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 14) {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .frame(width: 40, height: 40)
                    .background(Color.primaryColor)
                    .clipShape(Circle())
                
                Text(trip.title)
                    .font(.primary(.semiBold, size: 16))
                    .foregroundColor(.darkText)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .foregroundColor(.darkText)
            }
            .padding()
            
            Divider()
                .background(Color.lightGrey)
                .padding(.horizontal)
            
            HStack {
                Image(trip.user.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 58, height: 58)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(trip.user.name)
                        .font(.primary(.semiBold))
                        .foregroundColor(.darkText)
                    
                    Text(trip.user.address)
                        .font(.primary(.medium, size: 13))
                        .foregroundColor(.lightText)
                }
            }
            .padding()
            
            HStack {
                Image(systemName: "bell")
                
                Text("Playing")
                    .font(.primary(.bold))
            }
            .foregroundColor(.primaryColor)
            .padding(8)
            .background(Color.primaryColor.opacity(0.1))
            .cornerRadius(16)
            .padding(.leading)
            
            if trip.images.count >= 3 {
                CollageView(images: trip.images)
            } else {
                ForEach(trip.images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .padding(.horizontal)
                }
            }
            
            Text(trip.description)
                .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(.darkText)
                .lineSpacing(10)
                .font(.primary(.medium))
                .padding()
            
            HStack(spacing: 32) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "heart")
                        
                        Text(trip.heartCount.description)
                            .font(.primary(.regular))
                    }
                    .foregroundColor(.darkText)
                }

                Button(action: {}) {
                    HStack {
                        Image(systemName: "text.bubble")
                        
                        Text(trip.commentCount.description)
                            .font(.primary(.regular))
                    }
                    .foregroundColor(.darkText)
                }
                
                Spacer()
                
                ZStack {
                    Image("suzy")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 26, height: 26)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.white, lineWidth: 1.5)
                        )
                        .offset(x: -26, y: 0)
                    
                    Image("rose")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 26, height: 26)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.white, lineWidth: 1.5)
                        )
                        .offset(x: -13, y: 0)
                    
                    Image("iu")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 26, height: 26)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.white, lineWidth: 1.5)
                        )
                        .offset(x: 0, y: 0)
                }
            }
            .padding([.horizontal, .bottom])
        }
        .background(.white)
        .shadow(color: .black.opacity(0.04), radius: 8, x: 0, y: 3)
    }
    
}

struct TripContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewInterfaceOrientation(.portrait)
    }
}
