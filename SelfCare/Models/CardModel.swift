//
//  CardModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 29.07.2021.
//

import Foundation
import SwiftUI


struct Card : Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
}

let card = [
    Card(image: "card1", title: "Your Diet Chart"),
    Card(image: "card2", title: "Medical History"),
    Card(image: "card3", title: "Lab Results"),
    Card(image: "card3", title: "Covid-19"),
]
struct CardView : View {
    var data: Card
    @State var show = false
    var body: some View {
            HStack {
                Text(data.title)
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
                
                Image(data.image)
                    .resizable()
                    .frame(width: 152, height: 116)
            }.padding()
            .frame(width: UIScreen.main.bounds.width - 40, height: 116)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color("primary6")))
            .onTapGesture {
                self.show.toggle()
            }
            .fullScreenCover(isPresented: $show){
                ServiceHub(card: self.data)
            }
    }
}
