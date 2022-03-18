//
//  ContentView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 17/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedIndex = 0
    let splashPageData = SplashPageModel.sampleData
    var numberOfPages: Int {
        splashPageData.count
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            PagingView(
                selectedIndex: $selectedIndex,
                numberOfPages: numberOfPages
            ) {
                ForEach(splashPageData, id: \.self) { model in
                    SplashView(model)
                }
            }
            
            Spacer()
            
            HStack {
                PageControlView(
                    selectedIndex: $selectedIndex,
                    numberOfPages: numberOfPages
                )
                
                Spacer()
                
                Button {
                    withAnimation(.easeOut) {
                        if selectedIndex < numberOfPages - 1 {
                            self.selectedIndex += 1
                        } else {
                            // Open home screen
                        }
                    }
                } label: {
                    Image(systemName: selectedIndex == numberOfPages - 1 ? "checkmark" : "arrow.right")
                        .foregroundColor(.white)
                }
                .frame(width: 48, height: 48)
                .background(Color.primaryColor)
                .clipShape(Circle())
            }
            .padding()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .previewInterfaceOrientation(.landscapeRight)
    }
}
