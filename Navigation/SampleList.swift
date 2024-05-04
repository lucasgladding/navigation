//
//  SampleList.swift
//  Navigation
//
//  Created by Lucas Gladding on 2024-05-01.
//

import SwiftUI

struct SampleList: View {
    @State
    var items = [
        Sample(name: "Item 1"),
        Sample(name: "Item 2"),
        Sample(name: "Item 3"),
        Sample(name: "Item 4"),
        Sample(name: "Item 5")
    ]

    var body: some View {
        List(items) { item in
            NavigationLink {
                SampleInfo(sample: item)
            } label: {
                Text(item.name)
            }
        }
        .navigationTitle("Home")
    }
}

#Preview {
    NavigationStack {
        SampleList()
    }
}
