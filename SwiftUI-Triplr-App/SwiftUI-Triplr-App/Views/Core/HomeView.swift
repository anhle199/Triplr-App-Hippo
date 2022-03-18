//
//  HomeView.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            StoryView()
                .padding(.vertical)
            
            ScrollView {
                ForEach(Trip.dummies) { trip in
                    NavigationLink(destination: Text("Destination")) {
                        TripContentView(trip: trip)
                    }
                }
            }
            
//            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
