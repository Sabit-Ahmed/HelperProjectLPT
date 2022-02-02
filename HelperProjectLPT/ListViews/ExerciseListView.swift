//
//  ContentView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct ExerciseListView: View {
    @State private var searchString = ""
    @State var isSearchBarTapped: Bool = false
    @EnvironmentObject var apiData: GetApiData
    @Environment(\.presentationMode) var presentationMode
    var exerciseList = ["Exercise 1","BExercise 2","CExercise 3","ZExercise 4","DExercise 5","Exercise 6"]
    
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
                            ForEach(searchString == "" ? exerciseList: exerciseList.filter { $0.contains(searchString)},
                                    id: \.self) { exercise in
                                ExerciseRowView(exercise: exercise)
                            }
                        }
//                        .searchable(text: $searchString)
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
                HStack {
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
            
            ToolbarItem(placement: .navigationBarTrailing) {
                searchView()
            }
        }
    }
    
    
    @ViewBuilder
    func searchView() -> some View {
        ZStack {
            if isSearchBarTapped == true {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.darkShadow)
                        
                        TextField("Search", text: $searchString)
                    }
                    .onTapGesture {
                        isSearchBarTapped = true
                    }
                    .padding(.horizontal, 5)
                    .padding(.vertical, 5)
                    .foregroundColor(.neumorphictextColor)
                    .background(Color.background)
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width / 2)
                    
                    Text("Cancel")
                        .foregroundColor(.blue)
                        .onTapGesture {
                            isSearchBarTapped = false
                            searchString = ""
                        }
                }
            }
            else {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.darkShadow)
                    
//                                TextField("Search", text: $searchString)
                }
                .onTapGesture {
                    isSearchBarTapped = true
                }
                .padding(5)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseListView()
            .environmentObject(GetApiData())
    }
}

extension Color {
    static let lightShadow = Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
    static let darkShadow = Color(red: 163 / 255, green: 177 / 255, blue: 198 / 255)
    static let background = Color(red: 224 / 255, green: 229 / 255, blue: 236 / 255)
    static let neumorphictextColor = Color(red: 132 / 255, green: 132 / 255, blue: 132 / 255)
}
