//
//  TabBarView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct TabBarView: View {
    
    let geometry: GeometryProxy
    @Binding var selectedTabBar: TabBarType
    
    enum TabBarType: String, Identifiable, CaseIterable {
        case world, search, collage, profile
        
        var id: String {
            "ic.\(rawValue)"
        }
    }
   
    var body: some View {
            HStack {
                Spacer()
                
                ForEach(TabBarType.allCases) { tab in
                    Image(tab.id)
                        .foregroundColor(
                            selectedTabBar == tab ? .primaryColor : .darkText
                        )
                        .onTapGesture {
                            self.selectedTabBar = tab
                        }
                    
                    Spacer()
                }
            }
            .frame(
                width: geometry.size.width,
                height: geometry.safeAreaInsets.bottom + 49
            )
            .background(Color.lightGrey)
            .clipShape(
                RoundedCorner(
                    radius: 24,
                    corners: [.topLeft, .topRight]
                )
        )
    }
    
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
