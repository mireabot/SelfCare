//
//  NotificationScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI
import SunMoonToggleStyle

struct AppearanceScreen : View {
    @State private var isOn: Bool = false
    @State var isSsystem = false
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: label)
                .padding()
                    .toggleStyle(SunMoonToggleStyle())
            
            HStack {
                Text("Set as a system")
                    .font(Font.custom("Poppins-Medium", size: 14))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
                
                Button(action: {
                    self.isSsystem.toggle()
                }) {
                    ZStack {
                        Circle()
                            .fill(isSsystem == true ? Color("primary1") : Color.black.opacity(0.04))
                            .frame(width: 30, height: 30)
                        Image(systemName: "checkmark")
                            .font(.system(size: 14))
                            .foregroundColor(isSsystem == true ? Color.white : Color.black.opacity(0.04))
                    }
                }
            }.padding()
            
            Spacer()
        }
//        .padding()
    }
    func label() -> Text {
        isOn ? Text("Dark").font(Font.custom("Poppins-Medium", size: 14)).foregroundColor(Color("primary1")) : Text("Light").font(Font.custom("Poppins-Medium", size: 14)).foregroundColor(Color("primary1"))
      }
}
