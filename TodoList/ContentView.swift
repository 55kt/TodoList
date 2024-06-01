//
//  ContentView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ViewModel()
    
    var body: some View {
        TaskListView()
    }
}

#Preview {
    ContentView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
