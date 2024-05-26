//
//  MainTabView.swift
//  Trackzier
//
//  Created by Luciano Silva on 25/05/24.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectTab: Int = 0
    
    var body: some View {
        ZStack{
            Color.grayC
            
            
            ScrollView {
                 
            }
            
            VStack{
                
                Spacer()
                
                ZStack(alignment: .bottom) {
                    
                    ZStack(alignment: .center) {
                        Image("bottom_bar_bg")
                            .resizable()
                            .scaledToFit()
                        
                        HStack(alignment: .center, spacing: 0){
                            
                            
                            Spacer()
                            Button {
                                selectTab = 0
                            } label: {
                                Image("home")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                
                            }
                            .foregroundColor(selectTab == 0 ? .white : .gray30)
                            
                            
                            Spacer()
                            Button {
                                selectTab = 1
                            } label: {
                                Image("budgets")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                
                            }
                            .foregroundColor(selectTab == 1 ? .white : .gray30)
                            
                            
                            
                            Rectangle()
                                .fill(.clear)
                                .frame(width: 80, height: 0)
                            
                            
                            
                            Button {
                                selectTab = 2
                            } label: {
                                Image("calendar")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                
                            }
                            .foregroundColor(selectTab == 2 ? .white : .gray30)
                            
                            
                            Spacer()
                            Button {
                                selectTab = 3
                            } label: {
                                Image("creditcards")
                                    .resizable()
                                    .renderingMode(.template)
                                    .frame(width: 20, height: 20)
                                    .padding()
                                
                            }
                            .foregroundColor(selectTab == 3 ? .white : .gray30)
                            Spacer()
                        }
                    }
                    
                    Button {
                        
                    }label: {
                        Image("center_btn")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    .padding(.bottom, 5)
                    .shadow(color: .secondaryC.opacity(0.5), radius: 5, y: 0.5)
                }
                
            }
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets + 8)
        }
        .ignoresSafeArea()
        
    }
}


#Preview {
    MainTabView()
}
