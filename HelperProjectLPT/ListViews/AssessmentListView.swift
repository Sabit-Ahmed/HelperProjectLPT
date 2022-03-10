//
//  AssignmentListView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 30/11/21.
//

import SwiftUI

struct AssessmentListView: View {
    @EnvironmentObject var apiData: GetApiData
    @State var isSearchBarTapped: Bool = false
    @State private var searchString = ""
    var exerciseList = ["Exercise 1","Exercise 2","Exercise 3","Exercise 4","Exercise 5","Exercise 6"]
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    
                    RectangleCardUpper()
                    
                    VStack(alignment: .leading) {
                        
                        Text("Assessment List")
                            .bold()
                            .font(.title)
                            .padding(.leading, 15)
                        
                        searchViewLong()
                    }
                    
                    ScrollView {
                        LazyVStack(spacing: 0) {
                            ForEach(searchString == "" ? exerciseList: exerciseList.filter { $0.contains(searchString)},
                                    id: \.self) { exercise in
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
                
                if apiData.showMenuCard == true {
                    MenuCard()
                        
                }
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
}

struct AssignmentListView_Previews: PreviewProvider {
    static var previews: some View {
        AssessmentListView()
            .environmentObject(GetApiData())
    }
}
