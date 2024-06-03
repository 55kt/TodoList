//
//  NavigationBar.swift
//  TodoList
//
//  Created by Vlad on 30/5/24.
//

import SwiftUI

struct NavigationBar: View {
    
    //MARK: - Properties
    @Environment (\.dismiss) private var dismiss //Snaps of state
    let navTitle: String
    let buttonImageName: String?
    let buttonText: String?
    
    var body: some View {
        BackgroundView()
        .navigationTitle(navTitle)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        
                        //Return Button
                        Button {
                            dismiss()
                        } label: {
                            if let buttonText = buttonText {
                                Text(buttonText)
                                    .font(.headline)
                                    .foregroundStyle(Color.tdAccent)
                            } else if let buttonImageName = buttonImageName, !buttonImageName.isEmpty {
                                Image(systemName: buttonImageName)
                                    .font(.headline)
                                    .foregroundStyle(Color.tdAccent)
                            }
                        }
                    }
                }
    }
}

#Preview {
    NavigationView {
        NavigationBar(navTitle: "Nav Bar Name", buttonImageName: nil, buttonText: "TEXT")
    }
        .preferredColorScheme(.dark)
}
