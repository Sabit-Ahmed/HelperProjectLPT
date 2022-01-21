//
//  InstructionView2.swift
//  HelperProjectLPT
//
//  Created by Sabit Ahmed on 20/1/22.
//

import SwiftUI
import AVKit

struct InstructionView: View {
    var text: String = "<p class=\"MsoNormal\">In standing, begin by holding a dowel behind your back. Using\r\nyour uninjured arm, drive your affected hand behind your back towards the side as far as\r\nyou feel comfortable. Slowly return to the starting position and repeat as\r\nshown on the reference table. Do not lean forward too much and do not\r\ncompensate on your wrist.</p><p class=\"MsoNormal\"><o:p></o:p></p>"
    @Environment(\.presentationMode) var presentationMode
    
    var urlString: String = "https://mmhai.s3.us-east-2.amazonaws.com/LearnTherapist/emma/AROM Ankle Dorsiflexion in Sitting/AROM Ankle Dorsiflexion in Sitting_1639970462_raw.mp4"
    let videoRatio: CGFloat = 1080 / 1920
    
    var body: some View {
        
        let textToDisplay = filterHtmlTexts(text)
        let encodedUrl = urlString.encodedUrl()
        let videoUrl = encodedUrl
        
        GeometryReader { geo in
            VStack {
                
                RectangleCardUpper()
                
                VStack(alignment: .leading) {
                    Text("Exercise Name")
                        .bold()
                        .font(.title)
                        
                    
                    ScrollView {
                        VStack {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Instructions")
                                    .font(.system(size: 20))
                                    .bold()
                                
                                Text(textToDisplay)
                                    .font(.system(size: 15))
                                    
                                
                                if let videoUrl = videoUrl {
                                    VStack {
                                        VideoPlayer(player: AVPlayer(url: videoUrl))
                                            .frame(height: geo.size.width*videoRatio)
                                    }
                                }
                                
                                
                                Text("Images")
                                    .font(.system(size: 20))
                                    .bold()
                                
                            }
                            
                            VStack {
                                Image(systemName: "figure.wave.circle")
                                    .resizable()
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .scaledToFit()
                                
                                Image(systemName: "figure.wave.circle.fill")
                                    .resizable()
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .scaledToFit()
                            }
                            
                        }
                    }
                    
                    
                }
                .padding()
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true) // hides the "back" or previous view title button
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss() // this changes in iOS15
                    } label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                            
                            Text("Back")
                        }
                    }
                }
        }
        }
    }
    
    func filterHtmlTexts(_ htmlText: String) -> String {
        return htmlText.replacingOccurrences(of: "<[^>]*>|&nbsp|;", with: "", options: .regularExpression,range: nil).replacingOccurrences(of: "\r\n", with: " ",options: .regularExpression, range: nil)
    }
    
    func filterUrl(_ urlString: String) -> String {
        
        return urlString.addingPercentEncoding(withAllowedCharacters: CharacterSet(charactersIn: "!*'();:@&=+$,/?%#[]{} ").inverted)!
    }
    
}

extension CharacterSet {

    /// Characters valid in at least one part of a URL.
    ///
    /// These characters are not allowed in ALL parts of a URL; each part has different requirements. This set is useful for checking for Unicode characters that need to be percent encoded before performing a validity check on individual URL components.
    static var urlAllowedCharacters: CharacterSet {
        // Start by including hash, which isn't in any set
        var characters = CharacterSet(charactersIn: "#")
        // All URL-legal characters
        characters.formUnion(.urlUserAllowed)
        characters.formUnion(.urlPasswordAllowed)
        characters.formUnion(.urlHostAllowed)
        characters.formUnion(.urlPathAllowed)
        characters.formUnion(.urlQueryAllowed)
        characters.formUnion(.urlFragmentAllowed)

        return characters
    }
}

extension String {

    /// Converts a string to a percent-encoded URL, including Unicode characters.
    ///
    /// - Returns: An encoded URL if all steps succeed, otherwise nil.
    func encodedUrl() -> URL? {
        // Remove preexisting encoding,
        guard let decodedString = self.removingPercentEncoding,
            // encode any Unicode characters so URLComponents doesn't choke,
            let unicodeEncodedString = decodedString.addingPercentEncoding(withAllowedCharacters: .urlAllowedCharacters),
            // break into components to use proper encoding for each part,
            let components = URLComponents(string: unicodeEncodedString),
            // and reencode, to revert decoding while encoding missed characters.
            let percentEncodedUrl = components.url else {
            // Encoding failed
            return nil
        }

        return percentEncodedUrl
    }

}
