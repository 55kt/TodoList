//
//  ProgressLineView.swift
//  TodoList
//
//  Created by Vlad on 5/6/24.
//

import SwiftUI

struct ProgressLineView: View {
    
    //MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    
    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            ProgressView("Completion Task", value: vm.completionRate)
                .progressViewStyle(LinearProgressViewStyle())
                .foregroundStyle(Color.tdPrimary)
                .accentColor(.tdPrimary)
                .padding()
                .cornerRadius(10)
                .padding(.horizontal)
        }
    }
}

//MARK: - Preview
#Preview {
    NavigationStack {
        ProgressLineView()
    }
        .environmentObject(ViewModel())
        .preferredColorScheme(.dark)
}
