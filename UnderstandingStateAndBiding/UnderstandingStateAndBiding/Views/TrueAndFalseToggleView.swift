//
//  TrueAndFalseToggleView.swift
//  UnderstandingStateAndBiding
//
//  Created by Amanda Constante on 15/04/25.
//

import SwiftUI

struct TrueAndFalseToggleView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(
                isOn ? "On" : "Off",
                isOn: $isOn
            ).fixedSize()
        }
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity
        ).background(
            isOn ? 
                .brown :
                    .yellow
        )
    }
}

#Preview {
    TrueAndFalseToggleView()
}
