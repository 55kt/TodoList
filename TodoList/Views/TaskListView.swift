//
//  TaskListView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct TaskListView: View {
    
    //MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                //MARK: - Components
                
                BackgroundView()
                ListView()
            }
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
}

#Preview {
    TaskListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
