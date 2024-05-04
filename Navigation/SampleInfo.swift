//
//  SampleInfo.swift
//  Navigation
//
//  Created by Lucas Gladding on 2024-05-01.
//

import SwiftUI

struct SampleInfo: View {
    var sample: Sample

    var body: some View {
        List {
            Text(sample.name)
        }
        .navigationTitle("Info")
    }
}

#Preview {
    SampleInfo(sample: Sample(name: "Item 1"))
}
