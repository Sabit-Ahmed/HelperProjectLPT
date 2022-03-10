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
    var testDate: String = "2021-05-25T13:11:20.08.61"
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            ZStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    RectangleCardUpper()
                    
                    
                    VStack(alignment: .leading) {
                        HStack {
                            
                            Text("Home Exercises")
                                .bold()
                                .font(.system(size: 25))
                                
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("TEST-16643")
                                    .bold()
                                    .font(.system(size: 20))
                                    
                                
                                Text(splitDateString(testDate: self.testDate))
                                    .foregroundColor(.gray)
                                    .font(.system(size: 15))
                            }
                            
                        }
                        
                        searchViewLong()
                    }
                    .padding(.horizontal)
                    
                    ScrollView {
                        
                        LazyVStack(alignment: .leading, spacing: 0) {
                            ForEach(searchString == "" ? exerciseList: exerciseList.filter { $0.contains(searchString)},
                                    id: \.self) { exercise in
                                ExerciseRowView(exercise: exercise)
                            }
                        }
                        .searchable(text: $searchString)
                        
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
                searchViewShort()
            }
        }
    }
    
    
    @ViewBuilder
    func searchViewShort() -> some View {
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
    
    @ViewBuilder
    func searchViewLong() -> some View {
        ZStack {
            if isSearchBarTapped == true {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.darkShadow)
                        
                        TextField("Search", text: $searchString)
                        
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .onTapGesture {
                                searchString = ""
                            }
                    }
                    
                    .padding(.horizontal, 5)
                    .padding(.vertical, 5)
                    .foregroundColor(.neumorphictextColor)
                    .background(Color.background)
                    .cornerRadius(10)
                    .frame(width: UIScreen.main.bounds.width / 3)
                    
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
                    
                    TextField("Search", text: $searchString)
                }
                .onTapGesture {
                    isSearchBarTapped = true
                }
                .padding(5)
            }
        }
    }
    
    func splitDateString(testDate: String) -> Substring {
        return testDate.split(separator: "T")[0]
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
