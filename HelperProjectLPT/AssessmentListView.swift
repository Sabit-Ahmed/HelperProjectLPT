//
//  AssignmentListView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct AssessmentListView: View {
    
    var exerciseList = ["Exercise 1","Exercise 2","Exercise 3","Exercise 4","Exercise 5","Exercise 6"]
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                RectangleCardUpper()
                
                Text("Assessment List")
                    .bold()
                    .font(.title)
                    .padding(.leading, 15)
                
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(exerciseList, id: \.self) { exercise in
                            NavigationLink(destination: ExerciseListView(),
                                           label: {
                                AssessmentRowView()
                            })
                        }
                        .foregroundColor(.black)
                        .navigationBarHidden(true)
                    }
                    .padding(.vertical)
                }
            }
            
            
        }
        
    }
}

struct AssignmentListView_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentListView()
    }
}
