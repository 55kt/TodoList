//
//  ViewModel.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import Foundation

class ViewModel: ObservableObject {
    
    //MARK: - Properties
    @Published var newTask: String = ""
    @Published var selectedTask: TaskModel?
    @Published var tasks: [TaskModel] = [] {
        didSet {
            saveTask()
        }
    }
    
    let keyUD = "keyUD"
    
    //MARK: - Progress View Properties
    var completionRate: Double {
        let totalTasks = tasks.count
        let completionTasks = tasks.filter {$0.isCompleted}.count
        return totalTasks > 0 ? Double(completionTasks) / Double(totalTasks): 0
    }
    
    //MARK: - Initializer
    init() {
        getTask()
    }
    
    //MARK: - Create
    func addTask(task: String) {
        let newTask = TaskModel(title: task)
        tasks.append(newTask)
    }
    
    //MARK: - Read
    func getTask() {
            guard let data = UserDefaults.standard.data(forKey: keyUD) else { return }
            do {
                let decodeTask = try JSONDecoder().decode([TaskModel].self, from: data)
                DispatchQueue.main.async {
                    self.tasks = decodeTask
                }
            } catch {
                print("Error loading task: \(error)")
            }
        }
    
    //MARK: - Update
    func updateTask(id: UUID, title: String) {
        if let index = tasks.firstIndex(where: { $0.id == id }) {
            tasks[index].title = title
        }
    }
    
    //MARK: - Save
    func saveTask() {
        do {
            let encodeTask = try JSONEncoder().encode(tasks)
            UserDefaults.standard.setValue(encodeTask, forKey: keyUD)
        } catch {
            print("Error saving task: \(error)")
        }
    }
    
    func isCompletedTask(task: TaskModel) {
        if let index = tasks.firstIndex(where: {$0.id == task.id}) {
            tasks[index].isCompleted.toggle()
        }
    }
    
    //MARK: - Delete
    func deleteTask(task: IndexSet) {
        tasks.remove(atOffsets: task)
    }
}
