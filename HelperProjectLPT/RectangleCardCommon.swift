//
//  RectangleCardListView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct RectangleCardCommon: View {
    
    var width: CGFloat = 350
    
    var body: some View {
        Rectangle()
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
            .frame(width: width, height: 170, alignment: .center)
        
    }
}

struct RectangleCardListView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCardCommon()
    }
}
