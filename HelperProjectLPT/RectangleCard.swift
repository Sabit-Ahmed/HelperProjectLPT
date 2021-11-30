//
//  RectangleCardListView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct RectangleCard: View {
    
    var color = Color.init(red: 8 / 255, green: 24 / 255, blue: 89 / 255)
    
    var body: some View {
        Rectangle()
            .foregroundColor(color)
    }
}

struct RectangleCardListView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCard()
    }
}
