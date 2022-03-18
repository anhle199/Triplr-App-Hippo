//
//  DateView.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 19/03/2022.
//

import SwiftUI

struct DateView: View {
    
    let date: String
    
    var body: some View {
        HStack {
            Image(systemName: "calendar")
            Text(date)
        }
        .foregroundColor(.primaryColor)
        .padding(8)
        .background(Color.primaryLight)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
}

struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        DateView(date: "19 Sep 2001")
    }
}
