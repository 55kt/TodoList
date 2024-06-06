//
//  ContainerView.swift
//  TodoList
//
//  Created by Vlad on 6/6/24.
//

import SwiftUI

struct ContainerView: View {
    
    //MARK: - Properties
    @State private var isLaunchScreenViewPresented = true
    
    //MARK: - Body
    var body: some View {
        if !isLaunchScreenViewPresented {
            ContentView()
        } else {
            LaunchScreenView(isPresented: $isLaunchScreenViewPresented)
        }
    }
}

//MARK: - Preview
#Preview {
    ContainerView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
