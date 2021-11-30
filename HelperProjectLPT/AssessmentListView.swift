//
//  AssignmentListView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct AssessmentListView: View {
    var exerciseList = ["Exercise 1","Exercise 2","Exercise 3"]
    
    var body: some View {
        
        
        VStack {
            RectangleCardUpper()
            
            VStack(alignment: .leading) {
                Text("Assessment List")
                    .bold()
                    .font(.title)
                    .padding(.leading, 15)
                
                NavigationView {
                    
                    ScrollView {
                        
                        LazyVStack(spacing: 0) {
                            ForEach(exerciseList, id: \.self) { exercise in
                                AssessmentRowView()
                            }
                            .navigationBarHidden(true)
                        }
                        .padding(.vertical)
                    }
            
                }
                
            }
            
        }
        .ignoresSafeArea()
        
    }
}

struct AssignmentListView_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentListView()
    }
}
