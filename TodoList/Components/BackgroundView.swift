//
//  BackgroundView.swift
//  TodoList
//
//  Created by Vlad on 28/5/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color.tdBackground1, Color.tdBackground2], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
        .preferredColorScheme(.dark)
}
