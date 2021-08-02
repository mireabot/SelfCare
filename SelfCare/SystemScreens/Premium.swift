//
//  Premium.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 02.08.2021.
//

import Foundation
import SwiftUI


struct PremiumCard : View {
    @State var show = false
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10){
                Text("Get premium \nfeatures")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(.white)
            }
            Spacer()
            
            Image("star")
        }
        .padding()
        .frame(width: UIScreen.main.bounds.width - 40, height: 90)
        .background(Color("primary1"))
        .cornerRadius(12)
        .onTapGesture {
            self.show.toggle()
        }
        .fullScreenCover(isPresented: $show){
            PremiumPage()
        }
    }
}


struct PremiumPage : View {
    @Environment(\.presentationMode) var present
    var body: some View {
        ZStack {
            Color("primary1").ignoresSafeArea(.all)
            
            VStack {
                HStack {
                    Button(action: {
                        self.present.wrappedValue.dismiss()
                    }){
                        Image("back_white")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                }.padding()
                
                HStack {
                    Text("Improve your health \nmonitoring")
                        .font(Font.custom("Poppins-Bold", size: 24))
                        .foregroundColor(.white)
                    Spacer()
                }.padding()
                
                Image("premium_pic")
                
                Header(text: "What you get:", color: "White", size: 16, font: "Poppins-Medium")
                
                VStack(spacing: 10){
                    HStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 20, height: 20)
                        Text("Feature 1")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(.white)
                        
                        Spacer()
                    }.padding()
                    HStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 20, height: 20)
                        Text("Feature 2")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(.white)
                        
                        Spacer()
                    }.padding()
                    HStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 20, height: 20)
                        Text("Feature 3")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(.white)
                        
                        Spacer()
                    }.padding()
                }
                
                Spacer()
                Text("Become a member for $9.99 / month")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(.white)
                Button(action: {
                    
                }){
                    ButtonNonFilledWhite(buttonLabel: "Purchase")
                }.padding()
                Spacer()
            }
        }
    }
}


struct Premium_Previews: PreviewProvider {
    static var previews: some View {
        PremiumPage()
    }
}
