//
//  ToastViewDemo.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 29/12/21.
//

import SSToastMessage
import SwiftUI

struct ToastViewDemo2: View{

    @State private var showToast = false

    var body: some View{
        ZStack {
            RectangleCard(color: .red)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(width: 160, height: 50, alignment: .center)
                
            
            Text("COMING SOON!")
                .foregroundColor(.white)
                .bold()
                
        }
        .onTapGesture(perform: {
            showToast.toggle()
            print("toast")
        })
        .present(isPresented: self.$showToast, type: .toast, position: .bottom) {
                   /// create your own view for toast
                    self.createTopToastView2()
        }
        
    }
    
    func createTopToastView() -> some View {
            VStack {
                Spacer(minLength: 20)
                HStack() {
                    Image("mike")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fill)
                        .frame(width: 50, height: 50)
                        .cornerRadius(25)

                    VStack(alignment: .leading, spacing: 2) {
                        HStack {
                            Text("Mike")
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            Spacer()
                            Text("10:10")
                                .font(.system(size: 12))
                                .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
                        }

                        Text("Hey, Don't miss the WWDC on tonight at 10 AM PST.")
                            .lineLimit(2)
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                    }
                }.padding(15)
            }
            .frame(width: UIScreen.main.bounds.width, height: 110)
            .background(Color(red: 0.85, green: 0.65, blue: 0.56))
        }
    
    func createTopToastView2() -> some View {
            VStack {
                Text("Not Implemented Yet. Coming Soon!")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(.white)
            }
            .frame(width: UIScreen.main.bounds.width, height: 110)
            .background(Color(red: 0.85, green: 0.65, blue: 0.56))
        }
}

struct ToastViewDemo2_Previews: PreviewProvider {
    static var previews: some View {
        ToastViewDemo()
    }
}
