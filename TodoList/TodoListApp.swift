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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(isDarkMode ? .dark : .light) //Dark theme condition
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark) //Applying a dark theme to the preview
}
