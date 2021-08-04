//
//  ProfileLoader.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 04.08.2021.
//

import Foundation
import SwiftUI

struct ProfileLoader : View {
    
    @State var show = false
    
    var body : some View{
        
        ZStack{
            ZStack{
                
                Text("Loading")
                    .foregroundColor(Color("primary1"))
                    .font(.system(size: 40))
                
                Text("Loading")
                    .foregroundColor(Color.white)
                    .font(.system(size: 40))
                    .mask(
                        
                    
                        Capsule()
                        .fill(LinearGradient(gradient: .init(colors: [.clear,.white,.clear]), startPoint: .top, endPoint: .bottom))
                        .rotationEffect(.init(degrees: 30))
                        .offset(x: self.show ? 180 : -130)
                        
                    )
            }
        }
        .onAppear {
            
            withAnimation(Animation.default.speed(0.15).delay(0).repeatForever(autoreverses: false)){
                
                self.show.toggle()
            }
        }
    }
}


struct Loader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileLoader()
    }
}
