//
//  WelcomeView.swift
//  Trackzier
//
//  Created by Luciano Silva on 19/05/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome_screen")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack{
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: .widthPer(per: 0.5))
                    .padding(.top, .topInsets + 8)
                
                Spacer()
                
                
                Text("Congue malesuada in ac justo, a tristique\nleo massa. Arcu leo leo urna risus.")
                    .multilineTextAlignment(.center)
                    .font(.customfont(.regular, fontSize: 14))
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .padding(.bottom, 30)
                
                PrimaryButton(title: "Get Started", width: 324, height: 48, onPressed: {
                    
                })
                .padding(.bottom, 15)
                
                SecondaryButton(title: "I have an account", onPressed: {
                    
                })
                .padding(.bottom, .bottomInsets)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    WelcomeView()
}
