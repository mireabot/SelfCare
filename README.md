# SelfCare (pet project)

Mobile app which helps to control pills taking and storing lab results

You can see some facts and samples below:

# Design project

https://www.figma.com/file/OgCBicf5iF2vI0IKikupPZ/Selfcare?node-id=0%3A1

# Stack

- SwiftUI
- Firebase

# Project cover and code samples

![Alt text](https://dim.mcusercontent.com/cs/4498468663ace51c5029b39d4/images/948f2a0f-5217-2193-78dc-cbed03c86caf.png?w=608&dpr=2)

```swift
import Foundation
import SwiftUI


struct MedicalOnboarding : View {
    @State var next = false
    var body: some View {
        ZStack {
                VStack(spacing: 20) {
                    HStack {
                        VStack(alignment: .leading, spacing: 5){
                            Text("Welcome to virtual \nmedcine storage")
                                .font(Font.custom("Poppins-SemiBold", size: 20))
                                .foregroundColor(Color("primary1"))
                            Text("Here you can")
                                .font(Font.custom("Poppins-Regular", size: 12))
                                .foregroundColor(Color("primary4"))
                        }
                        Spacer()
                    }.padding()
                    
                    HStack {
                        VStack(spacing: 10){
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Add medcine to shop list")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Set a reminder to buy")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Manage by groups")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Share with family")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                        }
                        Spacer()
                    }.padding()
                    
                    Button(action: {
                        self.next = true
                    }){
                        ButtonFilled(buttonLabel: "Get Started")
                    }
                }
                .opacity(self.next == true ? 0 : 1)
                
                AddFirstMedcine()
                    .opacity(self.next == true ? 1 : 0)
        }
    }
}

```
