//
//  SplashView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct SplashView: View {
    
    let model: SplashModel
    
    init(_ model: SplashModel) {
        self.model = model
    }
    
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
            
            VStack(alignment: .leading, spacing: 14) {
                Text(model.title)
                    .font(.primary(.bold, size: 28))
                    .foregroundColor(.darkText)
                
                Text(model.description)
                    .font(.primary(.regular))
                    .foregroundColor(.lightText)
                    .lineSpacing(5)
                    .padding(.trailing, 50)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
    
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(SplashModel.sampleData[0])
    }
}
