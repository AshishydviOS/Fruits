//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ashish Yadav on 23/04/22.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    var fruits : [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<fruitsData.count) { item in
                FruitCardView(fruit: fruitsData[item])
            } //: LOOP
        } //: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
