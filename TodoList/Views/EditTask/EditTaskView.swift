//
//  EditTaskView.swift
//  TodoList
//
//  Created by Vlad on 3/6/24.
//

import SwiftUI

struct EditTaskView: View {
    
    @EnvironmentObject var vm: ViewModel
    var task: TaskModel
    
    var body: some View {
        
        NavigationStack {
            ZStack {
        
                NavigationBar(navTitle: "Edit Task", buttonImageName: nil, buttonText: "Cancel")
                
                VStack {
                    
                    EntryFieldView(fieldDescription: "Edit Your Task Name", fieldContent: $vm.newTask)
                    
                    ButtonView(buttonTitle: "Save") {
                        vm.updateTask(id: task.id, title: vm.newTask)
                    }
                    Spacer()
                }
                .padding(10)
                .onAppear{
                    vm.newTask = task.title
                }
            }
        }
    }
}

#Preview {
    NavigationView {
        EditTaskView(task: TaskModel(title: "Task"))
    }
        .preferredColorScheme(.dark)
        .environmentObject(ViewModel())
}
