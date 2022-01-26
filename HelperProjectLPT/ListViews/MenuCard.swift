//
//  MenuCard.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 26/1/22.
//

import SwiftUI

struct MenuCard: View {
    
    @EnvironmentObject var apiData: GetApiData
    
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
        .frame(width: 300)
    }
    
    @ViewBuilder
    func iconView() -> some View {
        Button {
            // Hide MenuCard
            apiData.showMenuCard = false
        } label: {
            Image(systemName: "text.badge.minus")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25, alignment: .leading)
                .foregroundColor(.white)
                .padding(.top, 23)
                .padding(.leading, 13)
        }

    }
}


struct MenuCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuCard()
    }
}
