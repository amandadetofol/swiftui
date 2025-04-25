//
//  ContentView.swift
//  BuildingListAndNavigation
//
//

import SwiftUI

struct ContentView: View {
    
    private let hikes = [
        HikeModel(
            name: "Salmonberry Trail",
            photo: "hike1",
            miles: 6.0),
        HikeModel(
            name: "Tom, Dick and Barry Mountain",
            photo: "hike2",
            miles: 5.8),
        HikeModel(
            name: "Tamanawas Falls",
            photo: "hike3",
            miles: 5.0)
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }.navigationTitle("Hikes")
                 .navigationDestination(for: HikeModel.self) { hikeModel in
                    HikeDetailsScreen(hikeModel: hikeModel)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
