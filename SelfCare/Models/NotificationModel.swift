//
//  NotificationModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 02.08.2021.
//

import Foundation
import SwiftUI


struct Notification : Identifiable {
    let id = UUID().uuidString
    let color: String
    let title: String
    let subtitle: String
    let subcolor: String
}

let notification_data = [
    Notification(color: "primary1", title: "Notification", subtitle: "Lorem ipsum dolor sit amet, consectetur Lorem ipsum dolor sit amet, ipsum dolor",subcolor: "error"),
    Notification(color: "primary1", title: "Notification", subtitle: "Lorem ipsum dolor sit amet, consectetur",subcolor: "secondary")
]


struct Notification_View : View {
    var notifications : Notification
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5){
                HStack {
                    Text(notifications.title)
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                    Circle()
                        .fill(Color("\(notifications.subcolor)"))
                        .frame(width: 10, height: 10)
                }
                Text(notifications.subtitle)
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary3"))
            }
        Spacer()
            
        }.padding()
        .frame(width: UIScreen.main.bounds.width - 40, height: 104)
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color("\(notifications.color)")))
    }
}
