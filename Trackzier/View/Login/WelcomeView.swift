//
//  WelcomeView.swift
//  Trackzier
//
//  Created by Luciano Silva on 19/05/24.
//

import SwiftUI

struct WelcomeView: View {
    
    @State var showSignIn: Bool = false
    @State var showSignUp: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("welcome_screen")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                
                VStack{
                    
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.5)
                        .padding(.top, 8)
                    
                    Spacer()
                    
                    Text("Congue malesuada in ac justo, a tristique\nleo massa. Arcu leo leo urna risus.")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 14)) 
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
                        .padding(.bottom, 30)
                    
                    PrimaryButton(title: "Get Started", width: 324, height: 48, onPressed: {
                        showSignUp.toggle()
                    })
                    .padding(.bottom, 15)
                    
                    SecondaryButton(title: "I have an account", onPressed: {
                        showSignIn.toggle()
                    })
                    .padding(.bottom, 30)
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
            .navigationDestination(isPresented: $showSignUp) {
                SocialSignupView()
            }
            .navigationDestination(isPresented: $showSignIn) {
                SignInView()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
