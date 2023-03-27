//
//  FruitesRowView.swift
//  Fructus
//
//  Created by Ashish Yadav on 23/04/22.
//

import SwiftUI

struct FruitesRowView: View {
    //MARK: - PROPERTY
    var fruit : Fruit
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 0.15, x: 2, y: 2)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    
            }
        }
    }
}

//MARK: - PREVIEW
struct FruitesRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitesRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
