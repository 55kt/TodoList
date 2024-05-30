//
//  AddTaskView.swift
//  TodoList
//
//  Created by Vlad on 29/5/24.
//

import SwiftUI

struct AddTaskView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            NavigationBar(navTitle: "Add Task", buttonImageName: "chevron.left") {
                //
            }
            VStack {
                EntryFieldView()
                ButtonView(buttonTitle: "Add Task") {
                    //
                }
                Spacer()
            }
            .padding(10)
        }
        
            }
        }
#Preview {
    AddTaskView()
        .preferredColorScheme(.dark)
}
