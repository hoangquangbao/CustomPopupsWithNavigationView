//
//  Task.swift
//  CustomPopupsWithNavigationView
//
//  Created by Quang Bao on 26/01/2022.
//

import SwiftUI

// MARK: Task Model
struct Task: Identifiable{
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
}

// MARK: Sample Tasks
var tasks : [Task] = [
    
    Task(taskTitle: "Building App", taskDescription: "Watching video on Youtube"),
    Task(taskTitle: "Drinking Orange fruit", taskDescription: "Get Orange in Refrigerator"),
    Task(taskTitle: "Rested", taskDescription: "Go to sleep in 1.5 hours"),
    Task(taskTitle: "Have lunch", taskDescription: "Eating at least is bowls"),
    Task(taskTitle: "Check mail", taskDescription: "Send daily report")
]

