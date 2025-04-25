//
//  HikeCellView.swift
//  BuildingListAndNavigation
//
//  Created by Amanda Constante on 14/04/25.
//

import Foundation
import SwiftUI

struct HikeCellView: View {
    private let hike: HikeModel
    
    init(hike: HikeModel) {
        self.hike = hike
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Image.init(hike.photo)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text("Miles: \(hike.miles.formatted())")
            }.padding(10)
        }
    }
}
