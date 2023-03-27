//
//  FructusApp.swift
//  Fructus
//
//  Created by Ashish Yadav on 22/04/22.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView()
            }
            
        }
    }
}
