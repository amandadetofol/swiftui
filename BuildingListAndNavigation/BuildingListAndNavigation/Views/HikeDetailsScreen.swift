//
//  HikeDetailsScreen.swift
//  BuildingListAndNavigation
//
//  Created by Amanda Constante on 14/04/25.
//

import Foundation
import SwiftUI

struct HikeDetailsScreen: View {
    private let hikeModel: HikeModel
    @State private var zoomed: Bool = false
    
    init(hikeModel: HikeModel) {
        self.hikeModel = hikeModel
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text(hikeModel.name)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Image.init(hikeModel.photo)
                    .resizable()
                    .frame(
                        width:  zoomed ? 600 : 300,
                        height: zoomed ? 600 : 300)
                    .clipShape(.circle)
                    .aspectRatio(contentMode: zoomed ?  .fill : .fit)
                    .onTapGesture {
                        withAnimation {
                            zoomed.toggle()
                        }
                    }
                Text("\(hikeModel.miles.formatted()) miles").padding(10)
            }
        }
    }
}

#Preview {
    HikeDetailsScreen(hikeModel:   HikeModel(
        name: "Salmonberry Trail",
        photo: "hike1",
        miles: 6.0)
    )
}
