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
        
        VStack(alignment: .leading) {
            Text("Exercise List")
                .bold()
                .font(.largeTitle)
                .padding(.top)
                .padding(.leading, 10)
                
            
            NavigationView {
                GeometryReader { geo in
                    ScrollView {
                        LazyVStack(alignment: .leading, spacing: 15) {
                            ForEach(exerciseList, id: \.self) { exercise in
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .shadow(radius: 5)
                                        .frame(width: geo.size.width - 20, height: 170, alignment: .center)
                                    
                                    ExerciseRowView()
                                }
                                    
                            }
                            .navigationBarHidden(true)
                        }
                    }
                    
                    
                }
            }
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseListView()
    }
}
