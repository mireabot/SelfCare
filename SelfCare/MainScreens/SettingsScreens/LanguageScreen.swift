//
//  LanguageScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI

struct LanguageScreen : View {
    @State var language = "English"
    var body: some View {
        VStack {
            
            Header(text: "Choose app language", color: "primary4", size: 16,font: "Poppins-Medium")
            
            VStack {
                HStack {
                    Text("English")
                        .font(Font.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color("primary1"))
                    
                    Spacer()
                    
                    Button(action: {
                        self.language = "English"
                    }) {
                        ZStack {
                            Circle()
                                .fill(language == "English" ? Color("primary1") : Color.black.opacity(0.04))
                                .frame(width: 30, height: 30)
                            Image(systemName: "checkmark")
                                .font(.system(size: 14))
                                .foregroundColor(language == "English" ? Color.white : Color.black.opacity(0.04))
                        }
                    }
                }.padding()
                HStack {
                    Text("Russian")
                        .font(Font.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color("primary1"))
                    
                    Spacer()
                    
                    Button(action: {
                        self.language = "Russian"
                    }) {
                        ZStack {
                            Circle()
                                .fill(language == "Russian" ? Color("primary1") : Color.black.opacity(0.04))
                                .frame(width: 30, height: 30)
                            Image(systemName: "checkmark")
                                .font(.system(size: 14))
                                .foregroundColor(language == "Russian" ? Color.white : Color.black.opacity(0.04))
                        }
                    }
                }.padding()
            }
            
            Spacer()
        }
    }
}
