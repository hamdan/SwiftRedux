//
//  ReduxApp.swift
//  Redux
//
//  Created by hamdan hashmi on 26/06/2025.
//

import SwiftUI

@main
struct ReduxApp: App {
    var body: some Scene {
        let store = Store(reducer: reducer)
        WindowGroup {
            ContentView().environmentObject(store)
        }
    }
}
