//
//  ExerciseRowView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct ExerciseRowView: View {
    
    var body: some View {
        
        ZStack {
            RectangleCardRow()
            
            HStack (spacing: 10) {
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .cornerRadius(5)
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Exercise Title")
                        .bold()
                        .padding(.vertical)
                    
                    Text("Assigned set: 0")
                    
                    Text("Assigned repetition: 10")
                    
                    NavigationLink(destination: UIKitView(),
                                   label: {
                        ZStack {
                            RectangleCard()
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .frame(width: 160, height: 50, alignment: .center)
                            
                            Text("START EXERCISE")
                                .foregroundColor(.white)
                                .bold()
                        }
                    })
                    
                }
                
                Spacer()
            }
            .padding()
        }
        
        
        
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowView()
    }
}
