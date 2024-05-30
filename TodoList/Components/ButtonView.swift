//
//  ButtonView.swift
//  TodoList
//
//  Created by Vlad on 29/5/24.
//

import SwiftUI

struct ButtonView: View {
    
    //MARK: - Properties
    @Environment (\.dismiss) private var dismiss //Snaps of state
    let buttonTitle: String
    let action: () -> ()
    
    var body: some View {
        VStack {
            Button {
                dismiss()
            } label: {
                Text(buttonTitle)
                    .font(.headline)
                    .padding()
                    .foregroundColor(Color.tdBackground1)
                    .frame(maxWidth: .infinity)
                    .background(Color.tdAccent)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ButtonView(buttonTitle: "Button") {}
        .preferredColorScheme(.dark)
}