//
//  NextToDoWidget.swift
//  NextToDoWidget
//
//  Created by TanjilaNur-00115 on 7/11/23.
//

import WidgetKit
import Foundation


/// NextTaskEntry Model
struct NextTaskEntry: TimelineEntry {
    let date: Date
    let configuration: NextToDoAppIntent
}
