//
//  MenuCard.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 26/1/22.
//

import SwiftUI

struct MenuCard: View {
    var body: some View {
        
        VStack(spacing: 0) {
            ZStack {
                
                RectangleCard()
                
                VStack {
                    
                    Image(systemName: "lightbulb.slash.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .center)
                        .foregroundColor(.white)
                        .padding()
                    
                    Text("MyMedicalHUB")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(5)
                    
                    Text("I'm EMMA.")
                        .foregroundColor(.white)
                    
                    Text("Your personal exercise assistant.")
                        .foregroundColor(.white)
                    
                    Text("Version: 0.0.1")
                        .foregroundColor(.white)
                }
                    
                
            }
            .overlay(iconView(), alignment: .topLeading)
            
            ZStack(alignment: .topLeading) {
                RectangleCard(color: .black)
                
                Button("Log Out") {
                    //
                }
                .foregroundColor(.white)
                .padding()
            }
        }
        
    }
}


@ViewBuilder
func iconView() -> some View {
    Button {
        //
    } label: {
        Image(systemName: "text.badge.minus")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 35, alignment: .leading)
            .foregroundColor(.white)
            .padding()
    }

}


struct MenuCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuCard()
    }
}
