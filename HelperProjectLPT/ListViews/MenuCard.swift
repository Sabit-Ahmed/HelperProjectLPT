//
//  MenuCard.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 26/1/22.
//

import SwiftUI

struct MenuCard: View {
    
    @EnvironmentObject var apiData: GetApiData
    private let width = UIScreen.main.bounds.width - UIScreen.main.bounds.width * 2 / 3
    
    var body: some View {
        
        HStack(spacing: 0) {
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
                
                
                ZStack(alignment: .topLeading) {
                    RectangleCard(color: .black)
                    
                    Button("Log Out") {
                        //
                    }
                    .foregroundColor(.white)
                    .padding()
                }
            }
            .frame(width: self.width > 300 ? self.width : 300)
            
            RectangleCard(color: .init(.sRGBLinear, red: 0, green: 0, blue: 0, opacity: 0.2))
                .onTapGesture {
                    self.apiData.showMenuCard = false
                }
        }
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
