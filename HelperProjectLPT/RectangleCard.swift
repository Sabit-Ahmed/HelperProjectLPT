//
//  RectangleCard.swift
//  LearningApp
//
//  Created by Sabit Ahmed on 5/10/21.
//

import SwiftUI

struct RectangleCard: View {
    var color = Color.init(red: 8 / 255, green: 24 / 255, blue: 89 / 255)
    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
    }
}

struct RectangleCard_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard()
    }
}
