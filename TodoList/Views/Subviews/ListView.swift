//
//  ListView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        List {
            ForEach(vm.tasks) {
                task in Text(task.title)
            }
        }
        .listStyle(.plain)
        .onAppear {
                    print("Tasks: \(vm.tasks)")  // Добавить эту строку
                }
        
    }
}

#Preview {
    ListView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
