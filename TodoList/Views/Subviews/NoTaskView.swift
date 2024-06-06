//
//  NoTaskView.swift
//  TodoList
//
//  Created by Vlad on 4/6/24.
//

import SwiftUI

struct NoTaskView: View {
    
    //MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    
    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            
            Text("THERE ARE NO TASKS\nWOULD YOU LIKE\nTO ADD?")
                .multilineTextAlignment(.center)
                .font(.title)
                .foregroundStyle(Color.tdPrimary)
                .opacity(0.5)
            
            Spacer()
            
            //Navigation Button
            NavigationLink(destination: AddTaskView()) {
                ZStack {
                    
                    Circle()
                        .frame(width: 100)
                        .foregroundStyle(Color.tdPrimary)
                        .opacity(0.5)
                    
                    Image(systemName: "plus")
                        .foregroundStyle(Color.tdAccent)
                        .font(.largeTitle)
                }
            }
        }
    }
}

//MARK: - Preview
#Preview {
    NoTaskView()
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
