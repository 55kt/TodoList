//
//  AddTaskView.swift
//  TodoList
//
//  Created by Vlad on 29/5/24.
//

import SwiftUI

struct EntryFieldView: View {
    
    //MARK: - Properties
    @State var newTask = ""
    
    var body: some View {
        
        VStack {
            TextField("Enter your new task", text: $newTask)
                .font(.headline)
                .padding()
                .background(Color.tdPrimary.opacity(0.15))
            .cornerRadius(10)
        }
    }
}

#Preview {
    EntryFieldView()
        .preferredColorScheme(.dark)
}
