//
//  PagingView.swift
//  TravelApp
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct PagingView<Content> : View where Content: View {
    
    @Binding var selectedIndex: Int
    let numberOfPages: Int
    let content: () -> Content
    
    @State private var _offset = CGFloat.zero
    @State private var _isDragging = false
    
    init(
        selectedIndex: Binding<Int>,
        numberOfPages: Int,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self._selectedIndex = selectedIndex
        self.numberOfPages = numberOfPages
        self.content = content
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    self.content()
                        .frame(
                            width: geometry.size.width,
                            height: geometry.size.height
                        )
                        .clipped()
                }
            }
            .content.offset(x: offset(in: geometry), y: 0)
            .frame(width: geometry.size.width, alignment: .leading)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self._isDragging = true
                        self._offset = (-CGFloat(selectedIndex) * geometry.size.width) + value.translation.width
                    }
                    .onEnded { value in
                        let predictedEndOffset = (-CGFloat(selectedIndex) * geometry.size.width) + value.predictedEndTranslation.width
                        let predictedIndex = Int(round(predictedEndOffset / -geometry.size.width))
                        
                        self.selectedIndex = clampedIndex(from: predictedIndex)
                        withAnimation(.easeOut) {
                            self._isDragging = false
                        }
                    }
            )
        }
        .clipped()
    }
    
    func offset(in geometry: GeometryProxy) -> CGFloat {
        if _isDragging {
            return max(
                min(self._offset, 0),
                -CGFloat(numberOfPages - 1) * geometry.size.width
            )
        }
        
        return -CGFloat(selectedIndex) * geometry.size.width
    }
    
    func clampedIndex(from predictedIndex: Int) -> Int {
        let newIndex = min(
            max(predictedIndex, selectedIndex - 1),
            selectedIndex + 1
        )
        
        guard newIndex >= 0 else { return 0 }
        guard newIndex < numberOfPages else { return numberOfPages - 1 }
        
        return newIndex
    }
    
}

struct PagingView_Previews: PreviewProvider {
    static var previews: some View {
        PagingView(
            selectedIndex: .constant(0),
            numberOfPages: SplashModel.sampleData.count
        ) {
            ForEach(SplashModel.sampleData, id: \.self) { model in
                SplashView(model)
            }
        }
    }
}
