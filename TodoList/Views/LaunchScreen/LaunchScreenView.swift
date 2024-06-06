//
//  LaunchScreenView.swift
//  TodoList
//
//  Created by Vlad on 5/6/24.
//

import SwiftUI

struct LaunchScreenView: View {
    
    //MARK: - Properties
    @Binding var isPresented: Bool
    @State var progress: CGFloat = 0.0
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    
    //MARK: - Body
    var body: some View {
        ZStack {
            BackgroundView()
            
            ZStack {
                // Logo
                RoundedRectangle(cornerRadius: 25)
                    .foregroundStyle(Color.tdPrimary.opacity(0.25))
                    .frame(width: 100, height: 100)
                Image(systemName: "checkmark")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(Color.tdPrimary)
                
                // Progress View
                VStack {
                    Spacer()
                    CustomProgressView(initialProgress: $progress, color: Color.tdPrimary)
                        .frame(height: 8)
                        .onReceive([self.progress].publisher) {
                            _ in if self.progress >= 1.0 {
                                self.isPresented = false
                            }
                        }
                        .padding(.bottom, 30)
                        .padding(.horizontal, 40)
                }
            }
        }
        .onAppear {
            self.startTimer()
        }
    }
    // Timer Function
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { time in
            self.progress += 0.05
        }
    }
}

//MARK: - Preview
#Preview {
    LaunchScreenView(isPresented: .constant(true))
}
