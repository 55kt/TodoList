//
//  AddTaskView.swift
//  TodoList
//
//  Created by Vlad on 29/5/24.
//

import SwiftUI

struct AddTaskView: View {
    
    //MARK: - Properties
    @State var newTask = ""
    
    var body: some View {
        VStack {
            TextField("Enter your new task", text: $newTask)
                .padding()
                .background(Color.tdPrimary.opacity(0.15))
            .cornerRadius(10)
            
            Text(newTask)
        }
    }
}

#Preview {
    AddTaskView()
        .preferredColorScheme(.dark)
}
