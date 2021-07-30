//
//  OnboardigView.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import Foundation
import SwiftUI

struct OnboardView: View {
    var item: OnboardingItems
    
    var body: some View {
            VStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 343, height: 350)
                
                VStack(spacing: 10) {
                    Text(item.title)
                        .font(Font.custom("Poppins-SemiBold", size: 32))
                        .foregroundColor(Color("primary1"))
                        .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8))
                    
                    Text(item.subtitle)
                        .foregroundColor(Color("primary4"))
                        .padding()
                        .multilineTextAlignment(.center)
                        .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8))
                }.padding(.horizontal)
                
                Spacer()
            }
            .foregroundColor(.black)
    }
}
