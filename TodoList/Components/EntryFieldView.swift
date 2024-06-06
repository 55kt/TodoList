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
    @Binding var fieldContent: String
    
    //MARK: - Body
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

//MARK: - Preview
#Preview {
    EntryFieldView(fieldDescription: "Enter your description", fieldContent: .constant("")) //*1
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}


//*1 In field content enter your vm model content
