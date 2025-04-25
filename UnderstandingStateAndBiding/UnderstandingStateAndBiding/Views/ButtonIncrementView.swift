//
//  ContentView.swift
//  UnderstandingStateAndBiding
//
//  Created by Amanda Constante on 14/04/25.
//

import SwiftUI
import SwiftData

struct ButtonIncrementView: View {
    
    @State private var count = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("This button has been pressed")
                Text("\(count)").font(.largeTitle) //Only this view will be re-rendered, the rest of the views not 
                Text("times")
            } .padding()
            Button(
                action: {
                    count += 1
                }, label: {
                    Text("Increment")
                }
            ).padding()
            Button(
                action: {
                    count = 0
                }, label: {
                    Text("Clear count")
                }
            ).padding()
        }
    }
}

#Preview {
    ButtonIncrementView()
}
