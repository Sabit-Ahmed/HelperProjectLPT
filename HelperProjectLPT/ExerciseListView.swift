//
//  ContentView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct ExerciseListView: View {
    
    var exerciseList = ["Exercise 1","Exercise 2","Exercise 3"]
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .leading) {
                
                RectangleCardUpper()
                
                Text("Exercise List")
                    .bold()
                    .font(.title)
                    .padding(.leading, 15)
                
                ScrollView {
                    
                    LazyVStack(spacing: 0) {
                        ForEach(exerciseList, id: \.self) { exercise in
                            ExerciseRowView()
                        }
                        
                    }
                    .navigationBarHidden(true)
                    .padding(.vertical)
                }
            }
            
            
        }
        .navigationBarHidden(true)
       
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseListView()
    }
}
