//
//  OnboardingWalkThrough.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 29.07.2021.
//

import Foundation
import SwiftUI


struct OnboardScreen: View {
    var screenWidth = UIScreen.main.bounds.width
    @State var xOffset: CGFloat = 0
    @State var currentPage = 0
    var lastPage = data.count - 1
    var firstPage = 0
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            GeometryReader { reader in
                HStack(spacing: 0) {
                    ForEach(data) { item in
                        OnboardView(item: item)
                            .frame(width: screenWidth)
                    }
                }
                .offset(x: xOffset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            onChanged(value: value)
                        })
                        .onEnded({ value in
                            onEnded(value: value)
                        })
                    
                )
            }
            
            VStack(spacing: 20) {
                Spacer()
                ZStack {
                    if currentPage != lastPage {
                        HStack {
                            Button(action: {
                                currentPage = lastPage
                                withAnimation {
                                    xOffset = -screenWidth * CGFloat(currentPage)
                                }
                            }, label: {
                                Text("Skip")
                                    .font(Font.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("primary1"))
                                    .frame(maxHeight: .infinity)
                            })
                            
                            Spacer()
                            
                            Button(action: {
                                currentPage += 1
                                withAnimation {
                                    xOffset = -screenWidth * CGFloat(currentPage)
                                }
                            }, label: {
                                HStack {
                                    Text("Next")
                                        .font(Font.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("primary1"))
                                            
                                    Image(systemName: "arrow.right")
                                        .foregroundColor(Color("primary1"))
                                }
                                .font(.system(size: 17, weight: .bold))
                                .frame(maxHeight: .infinity)
                            })
                        }
                        .frame(height: 60)
                        .foregroundColor(.white)
                        
                    } else {
                        Button(action: {
                            
                        }) {
                            ButtonFilled(buttonLabel: "Get Started")
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
    
    func onChanged(value: DragGesture.Value) {
        xOffset = value.translation.width - (screenWidth * CGFloat(currentPage))
    }
    
    func onEnded(value: DragGesture.Value) {
        if -value.translation.width > screenWidth / 2  && currentPage < lastPage {
            currentPage += 1
        } else {
            if value.translation.width > screenWidth / 2 && currentPage > firstPage {
                currentPage -= 1
            }
        }
        
        withAnimation {
            xOffset = -screenWidth * CGFloat(currentPage)
        }
    }
}


struct Onboard_Previews: PreviewProvider {
    static var previews: some View {
        OnboardScreen()
    }
}
