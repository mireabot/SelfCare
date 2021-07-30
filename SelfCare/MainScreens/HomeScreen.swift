//
//  HomeScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 29.07.2021.
//

import Foundation
import SwiftUI


struct HomeScreen : View {
    @State var showProfile = false
    var body: some View {
        VStack {
            HStack {
                Text("👋🏻 Hi Julia!")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                Spacer()
                
                Button(action: {
                    self.showProfile.toggle()
                }){
                    ZStack {
                        Circle()
                            .fill(Color("primary6"))
                            .frame(width: 46, height: 46)
                        Image("Avatar_Default")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
                .fullScreenCover(isPresented: $showProfile){
                    ProfileScreen()
                }
            }.padding()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 15){
                    ForEach(card){ cards in
                        CardView(data: cards)
                    }
                }
            }.padding()
            
            Spacer()
        }
    }
}



struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
