//
//  ContentView.swift
//  Redux
//
//  Created by hamdan hashmi on 26/06/2025.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var store: Store
    struct Props {
        let counter: Int
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
