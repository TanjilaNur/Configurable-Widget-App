//
//  NextToDoWidget.swift
//  NextToDoWidget
//
//  Created by TanjilaNur-00115 on 7/11/23.
//

import WidgetKit
import SwiftUI


struct NextToDoWidget: Widget {
    
    /// Widget Kind
    let kind: String = "NextToDoWidget"

    var body: some WidgetConfiguration {
        
        /// AppIntentConfiguration for Configurablewidget
        AppIntentConfiguration(kind: kind,
                               intent: NextToDoAppIntent.self,
                               provider: TaskProvider()) { entry in
            
            /// Render idget Entry View for the entry
            NextToDoWidgetEntryView(entry: entry)
            
                /// Container Bacground of widget view
                .containerBackground(for: .widget) {
                    ZStack {
                        Image("bgimage", bundle: nil)
                            .resizable()
                            .opacity(1.0)
                        Color.appPrimary.opacity(0.3)
                    }
                }
        }
        .supportedFamilies([.systemSmall])
    }
}

/// NextToDoAppIntent to provide dummy data for Previews
extension NextToDoAppIntent {
    
    /// When no next task found
    fileprivate static var noToDo: NextToDoAppIntent {
        let intent = NextToDoAppIntent()
        intent.NextToDO = "You have Nothing To Do!"
        return intent
    }
    
    ///Whe next task is available
    fileprivate static var dummyToDo: NextToDoAppIntent {
        let intent = NextToDoAppIntent()
        intent.NextToDO = "Perform Tests"
        return intent
    }
}


/// Previews of widget
#Preview(as: .systemSmall) {
    NextToDoWidget()
} timeline: {
    /// When no next task found
    NextTaskEntry(date: .now, configuration: .noToDo)
    
    ///When there is next task available
    NextTaskEntry(date: .now, configuration: .dummyToDo)
}
