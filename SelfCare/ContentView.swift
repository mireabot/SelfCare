//
//  ContentView.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var animate = false
    @State private var endSplash = false
    @AppStorage("is_logged") var status = false
    var body: some View {
        ZStack {
            if self.status {
                NavigationView{
                     
                     CustomTabView()
                         .navigationTitle("")
                         .navigationBarTitleDisplayMode(.inline)
                         .navigationBarHidden(true)
                         .preferredColorScheme(.light)
                 }
            }
            else {
                SplashScreen()
            }
            ZStack {
                Color("primary1")
                Image("Splash1")
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: animate ? .fill : .fit)
                    .frame(width: animate ? nil : 150, height: animate ? nil : 150)
                    .scaleEffect(animate ? 7 : 1)
                    .frame(width: UIScreen.main.bounds.width)
            }
            .ignoresSafeArea(.all, edges: .all)
            .onAppear(perform: animateLogo)
            .opacity(endSplash ? 0 : 1)
        }
    }
    private func animateLogo() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.25) {
            withAnimation(Animation.easeOut(duration: 0.45)) {
                animate.toggle()
            }
            withAnimation(Animation.easeOut(duration: 0.45)) {
                endSplash.toggle()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
