//
//  Model.swift
//  PrasadamTaskManagerApp
//
//  Created by Prasadam,Udayasri on 4/18/23.
//

import Foundation

struct TaskList {
    var item:[String]
}
struct PendingTasks {
    static var tasks = TaskList(item: [])
}

struct CompletedTasks {
    static var tasks = TaskList(item: [])
}

struct CanceledTasks {
    static var tasks = TaskList(item: [])
}
