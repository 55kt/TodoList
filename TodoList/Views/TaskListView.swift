//
//  TaskListView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                //MARK: - Components
                BackgroundView()
                    
            }
            .navigationTitle("To Do List")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: AddTaskView()) {
                        Image(systemName: "plus")
                            .foregroundStyle(Color.tdAccent)
                    }
                }
            }
        }
    }
}

#Preview {
    TaskListView()
        .preferredColorScheme(.dark)
}
