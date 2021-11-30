//
//  AssignmentListView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct AssessmentListView: View {
    @State var isActive: Bool = false
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
                                NavigationLink(destination: ExerciseListView(),
                                               isActive: $isActive,
                                               label: {
                                    AssessmentRowView()
                                })
                                    
                            }
                            .onDisappear {
                                isActive = true
                            }
                            .foregroundColor(.black)
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
