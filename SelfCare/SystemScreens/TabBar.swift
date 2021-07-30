//
//  TabBar.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 29.07.2021.
//

import Foundation
import SwiftUI


struct CustomTabView : View {
      
      @State var selectedTab = "Home"
      var edges = UIApplication.shared.windows.first?.safeAreaInsets
      @Namespace var animation
      
      var body: some View{
          
          VStack(spacing: 0){
              
              GeometryReader{_ in
                  
                  ZStack{
                      
                      // Tabs....
                      
                      // Type 2
                      //NavigationView{
                          
                    HomeScreen()
                      .opacity(selectedTab == "Home" ? 1 : 0)
                      
                    StaticsScreen()
                          .opacity(selectedTab == "Chart" ? 1 : 0)
                    
                    NotificationsScreen()
                          .opacity(selectedTab == "Notifications" ? 1 : 0)
                      
                    SettingsScreen()
                          .opacity(selectedTab == "Profile" ? 1 : 0)
                      
                  }
              }
              
              // TabView...
              HStack(spacing: 0){
                  
                  ForEach(tabs,id: \.self){tab in
                      
                      TabButton(title: tab, selectedTab: $selectedTab,animation: animation)
                      
                      if tab != tabs.last{
                          Spacer(minLength: 0)
                      }
                  }
              }
              .padding(.horizontal,30)
              // for iphone like 8 and SE
              .padding(.bottom,edges!.bottom == 0 ? 15 : edges!.bottom)
              .background(Color.white)
          }
          .ignoresSafeArea(.all, edges: .bottom)
          .background(Color.white.opacity(0.3).ignoresSafeArea(.all, edges: .all))
      }
  }
  
  // Tab Button...
  
  struct TabButton : View {
      
      var title : String
      @Binding var selectedTab : String
      var animation : Namespace.ID
      
      var body: some View{
          
          Button(action: {
              withAnimation{selectedTab = title}
          }) {
              
              VStack(spacing: 6){
                  
                  // Top Indicator....
                  
                  // Custom Shape...
                  
                  // Slide in and out animation...
                  
                  
                  
                if selectedTab == title {
                    Image(title)
                        .frame(width: 30, height: 30)
                        .shadow(color: Color("primary3"), radius: 10, x: 5, y: 0)
                }
                else {
                    Image(title)
                        .frame(width: 30, height: 30)
                }
                  
              }
          }.padding()
      }
  }
  
  // Custom Shape..
  
  struct CustomShape: Shape {
      
      func path(in rect: CGRect) -> Path {
          
          let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft,.bottomRight], cornerRadii: CGSize(width: 10, height: 10))
          
          return Path(path.cgPath)
      }
  }
  
  // Both Title Image Name Are Same....
var tabs = ["Home","Chart","Notifications","Profile"]
