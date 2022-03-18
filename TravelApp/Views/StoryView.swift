//
//  StoryView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25) {
                VStack(spacing: 12) {
                    Image(systemName: "plus")
                        .frame(width: 58, height: 58)
                        .background(Color.secondaryColor)
                        .clipShape(Circle())
                    
                    Text("Your Story")
                        .font(.primary(.medium, size: 13))
                }
                
                ForEach(Story.dummies) { story in
                    VStack(spacing: 12) {
                        Image(story.user.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 58, height: 58)
                            .clipShape(Circle())
                        
                        Text(story.user.name)
                            .font(.primary(.medium, size: 13))
                    }
                    .onTapGesture {
                        // View Story
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
