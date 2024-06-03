//
//  EditTaskView.swift
//  TodoList
//
//  Created by Vlad on 3/6/24.
//

import SwiftUI

struct EditTaskView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        
        ZStack {
            
            BackgroundView()
            
            NavigationBar(navTitle: "Edit Task", buttonImageName: nil, buttonText: "Cancel")
            
            VStack {
                
                EntryFieldView(fieldDescription: "Edit Your Task Name", fieldContent: $vm.newTask)
                
                ButtonView(buttonTitle: "Edit Task") {
                    //
                }
                Spacer()
            }
            .padding(10)
        }
        
        
    }
}

#Preview {
    NavigationView {
        EditTaskView()
    }
        .preferredColorScheme(.dark)
        .environmentObject(ViewModel())
}
