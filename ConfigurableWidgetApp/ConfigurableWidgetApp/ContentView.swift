//
//  ContentView.swift
//  ConfigurableWidgetApp
//
//  Created by TanjilaNur-00115 on 7/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /// Greet user
            Image(systemName: "hand.wave.fill")
                .imageScale(.large)
                .foregroundStyle(.teal)
            Text("Hello there!!")
        }
        .padding()
    }
}

/// Preview
#Preview {
    ContentView()
}
