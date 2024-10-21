//
//  ContentView.swift
//  SwiftUiBegginnerApp
//
//  Created by Amanda Detofol on 20/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("First line!")
                .foregroundStyle(.cyan)
            Text("Second line!")
            HStack {
                Text("Left")
                Text("Right")
                    .fontWeight(.bold)
            }.foregroundStyle(.orange)
        }
        .padding()
    }
}
