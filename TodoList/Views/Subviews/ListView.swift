//
//  ListView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var vm: ViewModel
    @State private var isEditViewPresented = false
    
    var body: some View {
        List {
            ForEach(vm.tasks) {
                task in TaskRow(model: task) {
                    vm.isCompletedTask(task: task)
                }
                .onTapGesture {
                    vm.selectedTask = task
                    isEditViewPresented = true
                }
            }
            .onDelete(perform: vm.deleteTask)
            .sheet(isPresented: $isEditViewPresented, content: {
                if let taskToEdit = vm.selectedTask {
                    EditTaskView(task: taskToEdit)
                }
            })
        }
        .listStyle(.plain)
    }
}

#Preview {
    ListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
