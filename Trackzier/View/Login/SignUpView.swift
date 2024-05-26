//
//  SignUpView.swift
//  Trackzier
//
//  Created by Luciano Silva on 25/05/24.
//

import SwiftUI

struct SignUpView: View {
    
    @State var txtEmail: String = ""
    @State var txtPassword: String = ""
    @State private var showSignIn = false
    
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
                    
                    RoundTextField(title: "E-mail Address", text: $txtEmail, keyboardType: .emailAddress)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    RoundTextField(title: "Password", text: $txtPassword, isPassword: true)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    HStack {
                        Rectangle()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                            .padding(.horizontal, 2)
                        
                        Rectangle()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                            .padding(.horizontal, 2)
                        
                        Rectangle()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                            .padding(.horizontal, 2)
                        
                        Rectangle()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 5, maxHeight: 5)
                            .padding(.horizontal, 2)
                    }
                    .padding(.horizontal, 20)
                    .foregroundColor(.gray70)
                    .padding(.bottom, 20)
                    
                    Text("Use 8 or more characters with a mix of letters, numbers & symbols.")
                        .multilineTextAlignment(.leading)
                        .font(.customfont(.regular, fontSize: 14))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        .foregroundColor(.gray50)
                        .padding(.bottom, 20)
                                                
                    PrimaryButton(title: "Get Started, it's free!", width: 350, onPressed: {})
                        .padding(.bottom, 150)
                    
                    Text("Do you already have an account?")
                        .multilineTextAlignment(.center)
                        .font(.customfont(.regular, fontSize: 14))
                        .padding(.horizontal, 20)
                        .foregroundColor(.white)
                        .padding(.bottom, 20)

                    SecondaryButton(title: "Sign In", width: 350, onPressed: {
                        showSignIn.toggle()
                    })
                    .padding(.bottom, .bottomInsets)
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
            .background(Color.gray80)
            .navigationDestination(isPresented: $showSignIn) {
                SignInView()
            }
        }
    }
}

#Preview {
    SignUpView()
}


