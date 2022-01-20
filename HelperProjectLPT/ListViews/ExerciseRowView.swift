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
            
            
            
            VStack {
                
                HStack (spacing: 15) {
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .cornerRadius(5)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text("Exercise Title")
                            .bold()
                            .padding(.vertical, 5)
                        
                        Text("Assigned set: 0")
                        
                        Text("Assigned repetition: 10")
                         
                    }
                    .padding(10)
                    
                   
                }
                .padding(.horizontal, 10)
                
                HStack {
                    
                    Spacer()
                    VStack {
                        NavigationLink(destination: UIKitView(),
                                       label: {
                            ZStack {
                                RectangleCard()
                                    .cornerRadius(5)
                                    .shadow(radius: 5)
                                    .frame(width: 150, height: 32, alignment: .center)
                                
                                Text("START WORKOUT")
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        })
                    }
                    
                    Spacer()
                    VStack {
                        
                        Button {
                            // TODO
                        } label: {
                            
                            ZStack {
                                RectangleCard()
                                    .cornerRadius(5)
                                    .shadow(radius: 5)
                                    .frame(width: 160, height: 32, alignment: .center)
                                
                                Text("MANUAL TRACKING")
                                    .font(.system(size: 13))
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                        
                    }
                    
                    Spacer()
                }
            }
        }
        
        
        
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowView()
    }
}
