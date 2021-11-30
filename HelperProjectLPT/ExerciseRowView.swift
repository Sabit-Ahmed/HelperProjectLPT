//
//  ExerciseRowView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct ExerciseRowView: View {
    
    var width: CGFloat = 350
    
    var body: some View {
        
        ZStack {
            RectangleCardCommon(width: self.width)
            
            HStack (spacing: 10) {
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .cornerRadius(5)
                Spacer()
                VStack(alignment: .leading, spacing: 15) {
                    
                    Text("Exercise Title")
                        .bold()
                    
                    Text("0 Sets (5 Repitions/Set)")
                    
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
                .padding()
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
