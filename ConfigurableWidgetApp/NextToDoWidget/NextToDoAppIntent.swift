//
//  AppIntent.swift
//  NextToDoWidget
//
//  Created by TanjilaNur-00115 on 7/11/23.
//

import WidgetKit
import AppIntents

struct NextToDoAppIntent: WidgetConfigurationIntent {
    
    /// Widget Configuration Title
    static var title: LocalizedStringResource = "Configuration"
    
    /// Widget Configuration Description
    static var description = IntentDescription("This is a To Do widget.")

    /// Configurable parameter for taking next task input from user
    @Parameter(title: "Next To Do", default: "You have Nothing to do!")
    
    /// Variable to hold the configured String
    var NextToDO: String
}
