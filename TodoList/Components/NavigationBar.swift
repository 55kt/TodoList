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
    let buttonImageName: String
    let action: () -> ()
    
    var body: some View {
        ZStack {
            BackgroundView()
        }
        .navigationTitle(navTitle)
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        
                        //Return Button
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: buttonImageName)
                                .font(.headline)
                                .foregroundColor(.tdAccent) //Add your color
                        }
                    }
                }
    }
}

#Preview {
    NavigationView {
        NavigationBar(navTitle: "Nav Bar Name", buttonImageName: "circle") {}
    }
        .preferredColorScheme(.dark)
}
