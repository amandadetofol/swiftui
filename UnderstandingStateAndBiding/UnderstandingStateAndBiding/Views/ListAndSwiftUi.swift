//
//  ListAndSwiftUi.swift
//  UnderstandingStateAndBiding
//
//  Created by Amanda Constante on 15/04/25.
//

import SwiftUI

struct ListAndSwiftUi: View {
    
    @State private var name: String = ""
    @State private var friends: [String] = []
    
    var body: some View {
        VStack {
            TextField(
                "Enter your friend name",
                text: $name
            )
            .textFieldStyle(.roundedBorder)
            .padding()
            .onSubmit {
                friends.append(name)
                name = ""
            }
            Spacer()
            List(friends, id: \.self) { friend in
                Text(friend)
            }
            Spacer()
            Button("Clear") {
                friends = []
            }
        }
    }
}

#Preview {
    ListAndSwiftUi()
}
