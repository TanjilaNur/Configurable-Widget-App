//
//  NextToDoWidget.swift
//  NextToDoWidget
//
//  Created by TanjilaNur-00115 on 7/11/23.
//

import WidgetKit
import SwiftUI


///TaskProvider for providing data to widget
struct TaskProvider: AppIntentTimelineProvider {
    
    ///Placeholder to show static data to user
    func placeholder(in context: Context) -> NextTaskEntry {
        NextTaskEntry(date: Date(), configuration: NextToDoAppIntent())
    }
    
    ///Snapshot to use a preview when adding widgets
    func snapshot(for configuration: NextToDoAppIntent, in context: Context) async -> NextTaskEntry {
        NextTaskEntry(date: Date(), configuration: configuration)
    }
    
    /// Widget Timeline to refreshes the widget according to entries
    func timeline(for configuration: NextToDoAppIntent, in context: Context) async -> Timeline<NextTaskEntry> {
        
        /// 'entries' array to hold the next task entry from configuration
        var entries: [NextTaskEntry] = [
            NextTaskEntry(date: Date(), configuration: configuration)
        ]
        
        /// In this case widget will only reload when configured
        return Timeline(entries: entries, policy: .never)
    }
}
