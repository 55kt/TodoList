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
        VStack {
            List {
                ForEach(vm.tasks) {
                    task in Text(task.title)
                }
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
