//
//  Covid_Home.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 06.08.2021.
//

import Foundation
import SwiftUI

struct Covid_Home : View {
    var body: some View {
        VStack {
            HStack {
                HStack(spacing: 20) {
                    Image("Good")
                        .resizable()
                        .frame(width: 44, height: 44)
                    Text("Your feeling is Good")
                        .font(Font.custom("Poppins-SemiBold", size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                }.padding()
            }
            .frame(width: UIScreen.main.bounds.width - 40, height: 90)
            .background(Color("primary1"))
            .cornerRadius(12)
            
            Spacer()
            
            ZStack {
                Header(text: "Check your diary history", color: "primary2", size: 16, font: "Poppins-Medium")
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }){
                        Text("See all")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("primary2"))
                    }
                }.padding()
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15){
                    HStack {
                        VStack(alignment: .leading, spacing: 10){
                            Text("Wed, 7 Nov")
                                .font(Font.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("primary3"))
                            Text("Lorem ipsum dolor sit amet, consectetur")
                                .font(Font.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("primary3"))
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 166, height: 145)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 10){
                            Text("Wed, 7 Nov")
                                .font(Font.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("primary3"))
                            Text("Lorem ipsum dolor sit amet, consectetur")
                                .font(Font.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("primary3"))
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 166, height: 145)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 10){
                            Text("Wed, 7 Nov")
                                .font(Font.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("primary3"))
                            Text("Lorem ipsum dolor sit amet, consectetur")
                                .font(Font.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("primary3"))
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 166, height: 145)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                }.padding()
            }
            
            Spacer()
            
            VStack(spacing: 15){
                Text("How you feel today?")
                    .font(Font.custom("Poppins-Medium", size: 16))
                    .foregroundColor(Color("primary1"))
                
                Button(action: {
                    
                }){
                    ButtonFilled(buttonLabel: "Add note")
                }
            }
        }
    }
}



struct Covid_Home_Previews: PreviewProvider {
    static var previews: some View {
        Covid_Home()
    }
}

