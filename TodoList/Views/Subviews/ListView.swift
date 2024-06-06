//
//  ListView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct ListView: View {
    
    //MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    @State private var isEditViewPresented = false
    
    //MARK: - Body
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
        
        ProgressLineView()
        
        //General NavBar
        .navigationTitle("To Do List")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink(destination: AddTaskView()) {
                    Image(systemName: "plus")
                        .font(.headline)
                        .foregroundStyle(Color.tdAccent)
                }
            }
        }
    }
}

//MARK: - Preview
#Preview {
    ListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
