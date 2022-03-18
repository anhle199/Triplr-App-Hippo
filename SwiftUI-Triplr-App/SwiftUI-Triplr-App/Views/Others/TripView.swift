//
//  TripView.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

struct TripView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var selectedPagerView: PagerView.`Type` = .activities
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("My Thailand Trip")
                .font(.primary(.bold, size: 28))
                .foregroundColor(.darkText)

            Text("09 Jan 2020 - 16 Mar 2020")
                .font(.primary(.medium))
                .foregroundColor(.lightText)
            
            PagerView(selection: $selectedPagerView)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    Group {
                        DateView(date: "03 May 2020")
                        
                        ActivityView(
                            type: .flight,
                            time: "04:09 PM",
                            place: "Lisbon Portela Airport - Lajes Airport"
                        )
                        
                        ActivityView(
                            type: .car,
                            time: "06:33 AM",
                            place: "Lajes Airport - Sao Roque do Pico"
                        )
                        
                        ArrivalView(
                            image: "collage.3",
                            star: "4.5",
                            place: "25210 Ethyl Valleys Apt. 576. Powlowskimouth, MD"
                        )
                    }
                    
                    Group {
                        DateView(date: "04 May 2020")
                        
                        ActivityView(
                            type: .car,
                            time: "07:52 AM",
                            place: "296 Minnie Knoll Apt. 717, D'Amoreland, PA 76154"
                        )
                        
                        ActivityView(
                            type: .sleep,
                            time: "12:16 PM",
                            place: "62337 Klocke Cliff, Aylatown, NC 57881-3589"
                        )
                        
                        ArrivalView(
                            image: "collage.2",
                            star: "3.7",
                            place: "6299 Pierre Flats Suite 338, New Adelleshire, MN"
                        )
                        
                        ActivityView(
                            type: .eating,
                            time: "07:52 PM",
                            place: "296 Minnie Knoll Apt. 717. D'Amoreland. PA 76154"
                        )
                        
                        ArrivalView(
                            image: "collage.2",
                            star: "3.8",
                            place: "6299 Pierre Flats Suite 338. New Adelleshire, MN"
                        )
                    }
                    
                    Group {
                        DateView(date: "05 May 2020")
                        
                        ActivityView(
                            type: .car,
                            time: "07:52 PM",
                            place: "296 Minnie Knoll Apt. 717. D'Amoreland. PA 76154"
                        )
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                backButton
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .edgesIgnoringSafeArea(.bottom)
    }
    
    var backButton: some View {
        Button(action: { dismiss() }) {
            Image(systemName: "arrow.left")
                .foregroundColor(.darkText)
        }
    }
    
}

struct TripView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TripView()
        }
        .navigationViewStyle(.stack)
    }
}
