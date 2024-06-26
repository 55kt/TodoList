//
//  Model.swift
//  TodoList
//
//  Created by Vlad on 30/5/24.
//

import Foundation

struct TaskModel: Identifiable, Codable {
    var id: UUID = UUID()
    var title: String
    var isCompleted: Bool = false
    
}
