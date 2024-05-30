//
//  AddTaskView.swift
//  TodoList
//
//  Created by Vlad on 29/5/24.
//

import SwiftUI

struct EntryFieldView: View {
    
    //MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    var fieldDescription: String
    var fieldContent: String
    
    var body: some View {
        
        VStack {
            TextField(fieldDescription, text: $fieldContent )
                .font(.headline)
                .padding()
                .background(Color.tdPrimary.opacity(0.15))
            .cornerRadius(10)
        }
    }
}

#Preview {
    EntryFieldView(fieldDescription: "Enter your description", fieldContent: "Enter your model content")
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
