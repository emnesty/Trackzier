//
//  SocialSignupView.swift
//  Trackzier
//
//  Created by Luciano Clécio da Silva on 22/05/24.
//

import SwiftUI

struct SocialSignupView: View {
    
    @State private var showSignUpWithEmail = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack{
                    
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .widthPer(per: 0.5))
                        .padding(.top, .topInsets + 8)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        ZStack{
                            Image("apple_btn")
                                .resizable()
                                .scaledToFit()
                                .padding(.horizontal, 20)
                                .frame(width: .screenWidth, height: 48)
                            
                            HStack{
                                Image("apple")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 15, height: 15)
                                
                                Text("Sign up with Apple")
                                    .font(.customfont(.semibold, fontSize: 14))
                            }
                            .padding(.horizontal, 20)
                            
                        }
                    }
                    .foregroundColor(.white)
                    .shadow(color: .black.opacity(0.3), radius: 5, y: 3)
                    .padding(.bottom, 25)
                    
                    
                    Button {
                        
                    } label: {
                        ZStack{
                            Image("google_btn")
                                .resizable()
                                .scaledToFit()
                                .padding(.horizontal, 20)
                                .frame(width: .screenWidth, height: 48)
                            
                            HStack{
                                Image("google_black")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 15, height: 15)
                                
                                Text("Sign up with Google")
                                    .font(.customfont(.semibold, fontSize: 14))
                            }
                            .padding(.horizontal, 20)
                            
                        }
                    }
                    .foregroundColor(.grayC)
                    .shadow(color: .white.opacity(0.3), radius: 5, y: 3)
                    .padding(.bottom, 25)
                    
                    Button {
                        
                    } label: {
                        ZStack{
                            Image("fb_btn")
                                .resizable()
                                .scaledToFit()
                                .padding(.horizontal, 20)
                                .frame(width: .screenWidth, height: 48)
                            
                            HStack{
                                Image("fb")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 15, height: 15)
                                
                                Text("Sign up with Facebook")
                                    .font(.customfont(.semibold, fontSize: 14))
                            }
                            .padding(.horizontal, 20)
                            
                        }
                    }
                    .foregroundColor(.white)
                    .shadow(color: .secondaryC.opacity(0.3), radius: 5, y: 3)
                    .padding(.bottom, 25)
                    
                    Text("or")
                        .multilineTextAlignment(.center)
                        .font(.customfont(.regular, fontSize: 14))
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
                        .padding(.bottom, 30)
                    
                    SecondaryButton(title: "Sign up with E-mail", onPressed: {
                        showSignUpWithEmail.toggle()
                    })
                    .padding(.bottom, 20)
                    
                    Text("Congue malesuada in ac justo, a tristique\nleo massa. Arcu leo leo urna risus.")
                        .multilineTextAlignment(.center)
                        .font(.customfont(.regular, fontSize: 14))
                        .padding(.horizontal, 20)
                        .foregroundColor(.gray60)
                        .padding(.bottom, .bottomInsets + 8)
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
            .background(Color.gray80)
            .navigationDestination(isPresented: $showSignUpWithEmail) {
                SignUpView()
            }
        }
    }
}

#Preview {
    SocialSignupView()
}

