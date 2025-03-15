//
//  ContentView.swift
//  OnBoardingSwiftUI
//
//  Created by Ravan on 12.03.25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = OnboardingViewModel()
    
    var body: some View {
        VStack{
            Text(viewModel.currentPage.title)
                .font(.title)
                .fontWeight(.bold)
            Text(viewModel.currentPage.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            Image(viewModel.currentPage.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 300)
                .padding()
            
            Spacer()
            
            Button(action: {
                viewModel.moveToNextContent()
            }) {
                Text("Next")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(30)
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
