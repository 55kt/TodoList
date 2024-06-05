//
//  LaunchScreenView.swift
//  TodoList
//
//  Created by Vlad on 5/6/24.
//

import SwiftUI

struct LaunchScreenView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(Color.tdPrimary.opacity(0.25))
                    .frame(width: 100, height: 100)
                Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.tdPrimary)
            }
        }
    }
}

#Preview {
    LaunchScreenView()
}
