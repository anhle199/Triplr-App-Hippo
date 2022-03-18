//
//  PageControlView.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct PageControlView: View {
    
    @Binding var selectedIndex: Int
    let numberOfPages: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<numberOfPages, id: \.self) { index in
                RoundedRectangle(cornerRadius: 8)
                    .fill(filledColor(at: index))
                    .frame(width: 10, height: 2)
            }
        }
    }
    
    func filledColor(at index: Int) -> Color {
        selectedIndex == index ? Color.primaryColor : Color.secondaryColor
    }
    
}

struct PageControlView_Previews: PreviewProvider {
    static var previews: some View {
        PageControlView(selectedIndex: .constant(0), numberOfPages: 3)
    }
}
