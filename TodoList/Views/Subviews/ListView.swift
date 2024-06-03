//
//  ListView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var vm: ViewModel
    @State private var isEditViewPresented = false
    
    var body: some View {
        VStack {
            List {
                ForEach(vm.tasks) {
                    task in TaskRow(model: task) {
                        vm.isCompletedTask(task: task)
                    }
                    .onTapGesture {
                        isEditViewPresented = true
                    }
                }
                .onDelete(perform: vm.deleteTask)
                .sheet(isPresented: $isEditViewPresented, content: {
                    EditTaskView()
                })
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    ListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
