//
//  NextToDoWidget.swift
//  NextToDoWidget
//
//  Created by TanjilaNur-00115 on 7/11/23.
//

import WidgetKit
import SwiftUI


/// Widget Entry View
struct NextToDoWidgetEntryView : View {
    var entry: TaskProvider.Entry

    var body: some View {
        VStack {
            Spacer()
            /// Next Task Text View
            Text(entry.configuration.NextToDO)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .shadow(radius: 6)
            
            Spacer()
        }
        .foregroundStyle(Color.black)
        
    }
}
