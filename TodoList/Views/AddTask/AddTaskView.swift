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
            VStack {
                EntryFieldView()
                ButtonView()
            }
            .padding(10)
        }
    }
}

#Preview {
    AddTaskView()
        .preferredColorScheme(.dark)
}
