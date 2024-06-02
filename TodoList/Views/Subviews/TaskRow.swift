//
//  TaskRow.swift
//  TodoList
//
//  Created by Vlad on 2/6/24.
//

import SwiftUI

struct TaskRow: View {
    
    //MARK: - Properties
    var model: TaskModel
    let action: () -> ()
    
    var body: some View {
        HStack {
            model.isCompleted ? Text(model.title).strikethrough().foregroundStyle(Color.tdPrimary.opacity(0.5)) : Text(model.title)
            
            Spacer()
            
            Button {
                action()
            } label: {
                Image(systemName: model.isCompleted ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.tdAccent)
            }
            .buttonStyle(.borderless)
        }
        .font(.headline)
        .padding()
        .background(model.isCompleted ? Color.tdPrimary.opacity(0.1) : Color.tdPrimary.opacity(0.25))
        .cornerRadius(10)
        .listRowInsets(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
        .listRowBackground(Color.clear)
        .listRowSeparator(.hidden)
        .padding(.vertical, 6.5)
    }
}

#Preview {
    List {
        TaskRow(model: TaskModel(title: "Task 1", isCompleted: true)) {}
        TaskRow(model: TaskModel(title: "Task 2", isCompleted: false)) {}
    }
    .listStyle(.plain)
    .preferredColorScheme(.dark)
}
