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
            
            NavigationBar(navTitle: "Add Task", buttonImageName: "chevron.left", buttonText: nil)
            
            VStack {
                
                EntryFieldView(fieldDescription: "Add your task name", fieldContent: $vm.newTask)
                
                ButtonView(buttonTitle: "Add Task") {
                    vm.addTask(task: vm.newTask)
                }
                .disabled(vm.newTask.isEmpty)
                Spacer()
            }
            .padding(10)
        }
        .onAppear{
            vm.newTask = ""  //Make entryfield empty whan you go back
        }
    }
}
//MARK: - Preview
#Preview {
    NavigationView {
        AddTaskView()  //Embet in NavigationView for a present NavBar
    }
        .preferredColorScheme(.dark)
        .environmentObject(ViewModel())
}
