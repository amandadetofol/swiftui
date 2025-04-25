//
//  Hike.swift
//  BuildingListAndNavigation
//
//  Created by Amanda Constante on 14/04/25.
//

import Foundation

struct HikeModel: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
