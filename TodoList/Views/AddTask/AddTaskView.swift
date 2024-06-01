//
//  AddTaskView.swift
//  TodoList
//
//  Created by Vlad on 29/5/24.
//

import SwiftUI

struct AddTaskView: View {
    
    //MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        
        //MARK: - Body & components
        
        ZStack {
            
            BackgroundView()
            
            NavigationBar(navTitle: "Add Task", buttonImageName: "chevron.left") {
                //
            }
            VStack {
                
                EntryFieldView(fieldDescription: "Add your task name", fieldContent: $vm.newTask)
                
                ButtonView(buttonTitle: "Add Task") {
                    vm.addTask(task: vm.newTask)
                    vm.newTask = ""
                }
                Spacer()
            }
            .padding(10)
        }
        
            }
        }
#Preview {
    NavigationView {
        AddTaskView()
    }
        .preferredColorScheme(.dark)
        .environmentObject(ViewModel())
}
