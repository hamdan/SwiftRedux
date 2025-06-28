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
        let onIncrement: () -> Void
        let onDecrement: () -> Void
        let onAdd: (Int) -> Void
    }
    private func map(state: State) -> Props {
        Props(counter: state.counter) {
            store.dispatch(action: IncrementAction())
        } onDecrement: {
            store.dispatch(action: DecrementAction())
        } onAdd: { value in
            store.dispatch(action: AddAction(value: value))
        }
    }
    var body: some View {
        let props = map(state: store.state)
        VStack {
            Text("\(store.state.counter)")
            Button("Increment") {
                props.onIncrement()
            }
            Button("Decrement") {
                props.onDecrement()
            }
            Button("Add Value") {
                props.onAdd(100)
            }
            
            
        }
       
        .padding()
    }
}

#Preview {
    ContentView()
}
