//
//  ContentView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct ExerciseListView: View {
    @EnvironmentObject var apiData: GetApiData
    @Environment(\.presentationMode) var presentationMode
    var exerciseList = ["Exercise 1","Exercise 2","Exercise 3","Exercise 4","Exercise 5","Exercise 6"]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ZStack(alignment: .leading) {
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
                        .padding(.vertical)
                    }
                }
                
                if apiData.showMenuCard == true {
                    MenuCard()
                        
                }
            }
        }
//        .navigationTitle("title")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true) // hides the "back" or previous view title button
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss() // this changes in iOS15
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                        
                        Text("Back")
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
