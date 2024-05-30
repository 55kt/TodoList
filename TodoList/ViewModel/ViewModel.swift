//
//  ViewModel.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var tasks: [TaskModel] = []
    @Published var newTask: String = ""
}
