//
//  ExerciseRowView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct ExerciseRowView: View {
    var exercise: String
    @State var isManualTrackingShowed: Bool = false
    
    var body: some View {
        
        if isManualTrackingShowed == true {
            ManualTrackingView(isManualTrackingShowed: $isManualTrackingShowed)
        }
        
        ZStack {
            RectangleCardRow()
            
            
            ZStack(alignment: .topTrailing) {
                VStack(alignment: .leading) {
                    
                    HStack (spacing: 15) {
                        
                        ZStack(alignment: .topTrailing) {
                            Image(systemName: "person.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipped()
                                .cornerRadius(5)
                            
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.green)
                                
                        }
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            Text("\(exercise)")
                                .bold()
                                .padding(.vertical, 5)
                            
                            Text("Assigned set: 0")
                            
                            Text("Assigned repetition: 10")
                             
                        }
                        .padding(10)
                        
                       
                    }
                    .padding(.horizontal, 10)
                    
                    HStack(spacing: 25) {
                        
                        
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
                        
                        
                        VStack {
                            
                            Button {
                                // TODO
                                
                                isManualTrackingShowed = true
                                
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
                        
                        
                    }
                }
                .padding(.vertical, 20)
                
                NavigationLink {
                    //
                    InstructionView()
                } label: {
                    
                    Image(systemName: "info.circle.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                }

                    
            }
            .padding()
        }
        
        
        
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowView(exercise: "Body Squats")
    }
}
