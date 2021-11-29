//
//  ExerciseRowView.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/11/21.
//

import SwiftUI

struct ExerciseRowView: View {
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                HStack (spacing: 10) {
                    
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: geo.size.width / 3.5, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .cornerRadius(5)
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        Text("Exercise Title")
                            .bold()
                        
                        Text("0 Sets (5 Repitions/Set)")
                        
                        Button {
                            // TODO
                        } label: {
                            Text("START EXERCISE")
                        }
                        
                    }
                    .padding()
                }
                .padding()
                
            }
        }
        
        
    }
}

struct ExerciseRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseRowView()
    }
}
