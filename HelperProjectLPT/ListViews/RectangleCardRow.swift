//
//  RectangleCardRow.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct RectangleCardRow: View {
    var body: some View {
        RectangleCard(color: .white)
            .cornerRadius(5)
            .shadow(radius: 5)
            .frame(height: 220, alignment: .center)
    }
}

struct RectangleCardRow_Previews: PreviewProvider {
    static var previews: some View {
        RectangleCardRow()
    }
}
