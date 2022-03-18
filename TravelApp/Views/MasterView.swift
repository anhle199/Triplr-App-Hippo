//
//  MasterView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct MasterView: View {
    
    @State private var selectedTabBar: TabBarView.TabBarType = .world
    
    init() {
        UINavigationBar.appearance().backgroundColor = .white
        UINavigationBar.appearance().barTintColor = .white
        UINavigationBar.appearance().tintColor = .darkText
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    switch selectedTabBar {
                    case .world:
                        HomeView()
                    case .search:
                        Text("Search")
                    case .collage:
                        Text("Collage")
                    case .profile:
                        Text("Profile")
                    }
                    
                    Spacer()
                    
                    TabBarView(
                        geometry: geometry,
                        selectedTabBar: $selectedTabBar
                    )
                }
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        leadingTitle
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Image(systemName: "bell")
                    }
                }
            }
        }
        .navigationViewStyle(.stack)
    }
    
    var leadingTitle: some View {
        Text("Travel")
            .font(.primary(.semiBold, size: 18))
            .foregroundColor(.darkText)
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
