//
//  ViewModel.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import Foundation

class ViewModel: ObservableObject {
    
    //MARK: - Properties
    @Published var tasks: [TaskModel] = []
    @Published var newTask: String = ""
    
    //MARK: - Methods
    func addTask(task: String) {
        let newTask = TaskModel(title: task)
        tasks.append(newTask)
        print("Task Added: \(task)")
    }
}
