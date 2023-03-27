//
//  ContentView.swift
//  Fructus
//
//  Created by Ashish Yadav on 22/04/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTY
    var fruits : [Fruit] = fruitsData
    
    //This property will track the state of wheather state is showing or isn't on the screen
    @State private var isShowingSetting : Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()){ item in
                    NavigationLink {
                        FruitDetailsView(fruit: item)
                    } label: {
                        FruitesRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    .sheet(isPresented: $isShowingSetting) {
                        SettingsView()
                    }
                    
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingSetting = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }

                }
            }
        } // : NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 pro")
    }
}
