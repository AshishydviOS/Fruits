//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ashish Yadav on 24/04/22.
//

import SwiftUI

struct SourceLinkView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia",
                     destination: URL(string: "www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

//MARK: - PREVIEW
struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
