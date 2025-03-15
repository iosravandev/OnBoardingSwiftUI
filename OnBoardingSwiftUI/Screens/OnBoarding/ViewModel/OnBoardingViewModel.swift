//
//  OnBoardingViewModel.swift
//  OnBoardingSwiftUI
//
//  Created by Ravan on 12.03.25.
//

import Foundation

class OnboardingViewModel: ObservableObject {
    
    @Published var currentPage: OnboardingPage
    private let pages: [OnboardingPage]
    private var currentIndex = 0
    
    init() {
        self.pages = [
            OnboardingPage(title: "Listen to music",
                           description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                           imageName: "listening"),
            OnboardingPage(title: "Discover new artists",
                           description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                           imageName: "reading"),
            OnboardingPage(title: "Create your playlist",
                           description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                           imageName: "running")
        ]
        self.currentPage = pages.first!
    }
    
    func moveToNextContent() {
        if currentIndex < pages.count - 1 {
            currentIndex += 1
            currentPage = pages[currentIndex]
        }
    }
    
}
