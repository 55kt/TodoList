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
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            ZStack {
                
                BackgroundView()
                
                if vm.tasks.isEmpty {
                    NoTaskView()
                } else {
                    ListView()
                }
            }
        }
    }
}

//MARK: - Preview
#Preview {
    TaskListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
