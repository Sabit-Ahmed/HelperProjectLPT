//
//  AssignmentRowView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct AssessmentRowView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            RectangleCard(color: .white)
                .frame(height: 100)
                .cornerRadius(5)
                .shadow(radius: 5)
            
            VStack(alignment: .leading, spacing: 5) {
                Text("Test ID: TEST-16643")
                    .bold()
                
                Text("Exercise Count: 44")
            }
            .padding(.leading)
               
        }
        
    }
}

struct AssignmentRowView_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentRowView()
    }
}
