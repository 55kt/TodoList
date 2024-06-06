//
//  ContentView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    @StateObject private var vm = ViewModel()
    
    //MARK: - Body
    var body: some View {
        TaskListView()
    }
}

//MARK: - Preview
#Preview {
    ContentView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
