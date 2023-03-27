//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Ashish Yadav on 26/04/22.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTY
    var labelText : String
    var labelImage : String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText)
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
