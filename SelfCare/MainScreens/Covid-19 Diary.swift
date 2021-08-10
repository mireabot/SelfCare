//
//  Covid-19 Diary.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 10.08.2021.
//

import Foundation
import SwiftUI

struct Covid_Diary : View {
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.present.wrappedValue.dismiss()
                }) {
                    Image("back")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                Text("Your diary")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 15){
                    ForEach(diary_data){ diary in
                        DiaryView(diary_content: diary)
                    }
                }.padding()
            }
            
            Spacer()
            
        }
    }
}


struct Covid_Diary_Previews: PreviewProvider {
    static var previews: some View {
        Covid_Diary()
    }
}

