//
//  PagerView.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct PagerView: View {
    
    enum `Type`: String, CaseIterable {
        case activities, photos
        
        var title: String { rawValue.capitalized }
    }
    
    @Binding var selectedType: `Type`
    
    init(selection: Binding<`Type`>) {
        self._selectedType = selection
    }
    
    var body: some View {
        HStack {
            ForEach(`Type`.allCases, id: \.self) { type in
                VStack {
                    Text(type.title)
                        .foregroundColor(
                            selectedType == type ? .primaryColor : .darkText
                        )
                    
                    (selectedType == type ? Color.primaryColor : Color.clear)
                        .frame(width: 20, height: 2)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                }
                .frame(maxWidth: .infinity)
                .onTapGesture {
                    self.selectedType = type
                }
            }
        }
        .padding(.vertical)
    }
}

struct PagerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TripView()
        }
        .navigationViewStyle(.stack)
    }
}
