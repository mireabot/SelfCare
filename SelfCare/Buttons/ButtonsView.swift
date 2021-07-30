//
//  ButtonsView.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import Foundation
import SwiftUI


struct ButtonFilled : View {
    var buttonLabel : String
    var body: some View {
        
        VStack {
            Text(buttonLabel)
                .font(Font.custom("Poppins-Medium", size: 16))
                .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 42)
        .background(Color("primary1"))
        .cornerRadius(8)
    }
}

struct ButtonNonFilled : View {
    var buttonLabel : String
    var body: some View {
        VStack {
            Text(buttonLabel)
                .font(Font.custom("Poppins-Medium", size: 16))
                .foregroundColor(Color("primary1"))
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 42)
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary1")))
    }
}

struct ButtonNonFilledColor : View {
    var buttonLabel : String
    var color : String
    var body: some View {
        VStack {
            Text(buttonLabel)
                .font(Font.custom("Poppins-Medium", size: 16))
                .foregroundColor(Color("\(color)"))
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 42)
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color("\(color)")))
    }
}


struct Button_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNonFilled(buttonLabel: "Login")
    }
}
