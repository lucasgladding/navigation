//
//  SampleList.swift
//  Navigation
//
//  Created by Lucas Gladding on 2024-05-01.
//

import SwiftUI

let items = [
    Sample(name: "Item 1"),
    Sample(name: "Item 2"),
    Sample(name: "Item 3"),
    Sample(name: "Item 4"),
    Sample(name: "Item 5")
]

struct SampleList: View {
    @State
    var state = SampleState()

    var body: some View {
        List(state.items) { item in
            NavigationLink(value: item) {
                Text(item.name)
            }
        }
        .navigationDestination(for: Sample.self) { sample in
            SampleInfo(sample: sample)
        }
        .navigationTitle("Home")
        .onAppear {
            state.items = items
        }
        .onChange(of: items) {
            state.items = items
        }
    }
}

#Preview {
    NavigationStack {
        SampleList()
    }
}
