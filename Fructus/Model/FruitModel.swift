//
//  FruitModel.swift
//  Fructus
//
//  Created by Ashish Yadav on 23/04/22.
//

import SwiftUI

//MARK: - Fruits Data Model
struct Fruit : Identifiable {
    var id          = UUID()
    var title       = ""
    var headline    = ""
    var image       = ""
    var gradientColors : [Color]
    var description = ""
    var nutrition : [String]
}



