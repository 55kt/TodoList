//
//  TodoListApp.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    //MARK: - Properties
    @AppStorage("isDarkMode") private var isDarkMode: Bool = true //Dark theme condition
    @StateObject var vm = ViewModel() //Gives access to the viewModel to the entire app
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm) //For the correct preview in app
                .preferredColorScheme(isDarkMode ? .dark : .light) //Dark theme condition
        }
    }
}
