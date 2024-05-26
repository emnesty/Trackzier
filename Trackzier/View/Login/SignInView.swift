//
//  SingInView.swift
//  Trackzier
//
//  Created by Luciano Silva on 25/05/24.
//

import SwiftUI

struct SignInView: View {
    
    @State var txtEmail: String = ""
    @State var txtPassword: String = ""
    @State var isRemember: Bool = false
    
    var body: some View {
        ZStack {
            
                VStack{
                    
                    Image("app_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: .widthPer(per: 0.5))
                        .padding(.top, .topInsets + 8)
                    
                    Spacer()
                    
                    RoundTextField(title: "Login", text: $txtEmail, keyboardType: .emailAddress)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    RoundTextField(title: "Password", text: $txtPassword, isPassword: true)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    
                    
                    HStack{
                        Button {
                            isRemember = !isRemember
                            
                        }label: {
                            
                            HStack{
                                
                                Image(systemName: isRemember ? "checkmark.square" : "square")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                
                                Text("Save Password")
                                    .multilineTextAlignment(.center)
                                    .font(.customfont(.regular, fontSize: 14))
                            }
                        }
                        .foregroundColor(.gray50)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                        
                        
                        Spacer()
                        Button {
                            
                        }label: {
                            Text("Forgot Password")
                                .multilineTextAlignment(.center)
                                .font(.customfont(.regular, fontSize: 14))
                        }
                        .foregroundColor(.gray50)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)
                    }
                    
                    

                                                    
                    PrimaryButton(title: "Sign In", width: 350, onPressed: {
                        
                    })
                        .padding(.bottom, 250)
                        .padding(.bottom, .bottomInsets + 8)
                        
                }
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .ignoresSafeArea()
            .background(Color.gray80)
    }
}

#Preview {
    SignInView()
}

